class CreateNotificationMailer < ApplicationMailer
    def create_notification_route(user,notification_message)
        @user = params[:user]
        @notification_message = notification_message
        mail(to: @user.email, subject: "#{@notification_message}")
    end

    def create_notification_organization(user,notification_message)
        @user = params[:user]
        @notification_message = notification_message
        mail(to: @user.email, subject: "#{@notification_message}")
    end
end