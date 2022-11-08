class UserMailer < ApplicationMailer
    default from: 'notifications@example.com'
  
    def welcome_email
    #   @user = params[:user]
    #   @url  = 'http://example.com/login'
    #   mail(to: @user.email, subject: 'Welcome to My Awesome Site')
    @email = "user@example.com"
    @url = 'http://example.com/login'
    mail(to: @email, subject: "Welcome to your projects portfolio")
    end

    def notify_email
        @email = "user@example.com"
        @url = "http://example.com/portfolios"
    mail(to: @email, subject: "Check out these Project Portfolio examples!")
    end
  end