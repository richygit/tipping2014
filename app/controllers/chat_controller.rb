class ChatController < WebsocketRails::BaseController
  include ActionView::Helpers::SanitizeHelper

  def initialize_session
    puts "Session Initialized\n"
  end
  
  def broadcast(ev, user_name, received, msg_body)
    broadcast_message ev, { 
      user_name: user_name, 
      received: received, 
      msg_body: msg_body
    }
  end

  def system_msg(ev, msg)
      broadcast ev, 'system', Time.now.to_s(:short), msg
  end
  
  def user_msg(ev, msg)
    broadcast ev, connection_store[:user][:user_name], Time.now.to_s(:short), ERB::Util.html_escape(msg) 
  end
  
  def client_connected
    #system_msg :new_message, "client #{client_id} connected"
  end
  
  def add_msg(msg)
    msg_log = controller_store[:msg_log] || []
    msg_log << {user_name: connection_store[:user][:user_name], received: Time.now.to_s(:short), msg_body: msg }
    msg_log.shift if msg_log.length > 15
    controller_store[:msg_log] = msg_log
  end

  def new_message
    add_msg(message[:msg_body])
    user_msg :new_message, message[:msg_body].dup
  end
  
  def new_user
    email = sanitize(message[:email])
    connection_store[:user] = { user_name: sanitize(message[:user_name]), email: email }
    broadcast_user_list
    send_msg_log(email)
  end
  
  def delete_user
    connection_store[:user] = nil
    system_msg "client #{client_id} disconnected"
    broadcast_user_list
  end
  
  def broadcast_user_list
    users = connection_store.collect_all(:user)
    broadcast_message :user_list, users
  end

  def send_msg_log(email)
    msg_log = controller_store[:msg_log] || []
    msg_log.each do |msg|
      WebsocketRails[email].trigger(:msg_log, {user_name: msg[:user_name], received: msg[:received], msg_body: msg[:msg_body]})
    end
  end
end
