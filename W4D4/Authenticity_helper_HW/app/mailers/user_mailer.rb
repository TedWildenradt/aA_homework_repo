class UserMailer < ApplicationMailer
  default from: 'everybody@appacademy.io'

  def welcome_email(user)
    @user = user
    mail(to: 'example@email.com', subject: 'Welcome to My Awesome Site')
  end
end
