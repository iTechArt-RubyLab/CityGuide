class CreateNotificationMailer < ApplicationMailer
  def create_notification_route(_user, notification_message)
    @user = params[:user]
    @notification_message = notification_message
    mail(to: @user.email, subject: @notification_message.to_s)
  end

  def create_notification_organization(_user, notification_message)
    @user = params[:user]
    @notification_message = notification_message
    mail(to: @user.email, subject: @notification_message.to_s)
  end
end
