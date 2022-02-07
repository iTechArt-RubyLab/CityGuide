class ApproveNotificationOrganizationJob < ApplicationJob
    queue_as :default
  
    def perform(user)
      ApproveNotificationMailer.with(user: user).approve_notification_organization(user).deliver_now
    end
  end