class ApproveNotificationMailer < ApplicationMailer
  def approve_notification_route(_user)
    @user = params[:user]
    mail(to: @user.email, subject: 'Your route has been approved')
  end

  def approve_notification_organization(_user)
    @user = params[:user]
    mail(to: @user.email, subject: 'Your organization has been approved')
  end
end
