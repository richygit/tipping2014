class UserMailer < ActionMailer::Base
  default reply_to: "tipping2014info@gmail.com", from: "tipping2014info@app24526612.mailgun.org"

  def welcome(user, password)
    @user = user
    mail(to: @user.email, subject: 'Welcome Tipping 2014')
  end
end
