class UserMailer < ApplicationMailer
  
  def hello(email)
    @email = email
    @env   = Rails.env
    mail to: @email
  end

end
