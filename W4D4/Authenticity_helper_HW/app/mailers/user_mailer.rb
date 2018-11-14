class UserMailer < ApplicationMailer
  default from: 'everybody@appacademy.io'

  def welcome_email(user)
    @user = user
    @email = 'person@asdfasd.com'
    @url  = 'http://example.com/login'
    mail(to: @email, subject: 'Welcome to My Awesome Site')
  end
end
