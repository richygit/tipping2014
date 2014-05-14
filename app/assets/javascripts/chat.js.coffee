window.Chat = {}

class Chat.User
  constructor: (@user_name) ->
  serialize: => { user_name: @user_name }

class Chat.Controller
  template: (message) ->
    html =
      """
      <div class="message" >
        <label class="label label-info">
          #{message.user_name}
        </label>&nbsp;
        #{message.msg_body}
      </div>
      """
    $(html)

  userListTemplate: (userList) ->
    userHtml = ""
    for user in userList
      userHtml = userHtml + "<li>#{user.user_name}</li>"
    $(userHtml)

  constructor: (url,useWebSockets, userName) ->
    @messageQueue = []
    @userName = userName
    @retries = 0
    @url = url
    @useWebSockets = useWebSockets
    @connect()

  connect: =>
    @dispatcher = new WebSocketRails(@url,@useWebSockets)
    @dispatcher.on_open = @createUser
    @bindEvents()

  bindEvents: =>
    @dispatcher.bind 'new_message', @newMessage
    @dispatcher.bind 'user_list', @updateUserList
    $('#send').on 'click', @sendMessage
    $('#message').keypress (e) -> $('#send').click() if e.keyCode == 13

  newMessage: (message) =>
    @messageQueue.push message
    @shiftMessageQueue() if @messageQueue.length > 15
    @appendMessage message

  sendMessage: (event) =>
    event.preventDefault()
    message = $('#message').val()
    @dispatcher.trigger 'new_message', {user_name: @user.user_name, msg_body: message}, @success, @failure if !!message.replace(/^\s+|\s+$/g, "")
    $('#message').val('')

  success: (response) =>
    @retries = 0

  failure: (response) =>
    console.log("Failure: " + response.message)
    if @retries < 2
      @connect()
      @retries = @retries + 1

  updateUserList: (userList) =>
    $('#user-list').html @userListTemplate(userList)

  appendMessage: (message) ->
    messageTemplate = @template(message)
    $('#chat').append messageTemplate
    messageTemplate.slideDown 140
    $(".chat-messages").scrollTop($(".chat-messages")[0].scrollHeight);

  shiftMessageQueue: =>
    @messageQueue.shift()
    $('#chat div.messages:first').slideDown 100, ->
      $(this).remove()

  createUser: =>
    @user = new Chat.User(@userName)
    @dispatcher.trigger 'new_user', @user.serialize()
