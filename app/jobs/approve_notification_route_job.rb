class ApproveNotificationRouteJob < ApplicationJob
    queue_as :default
  
    def perform(user)
      ApproveNotificationMailer.with(user: user).approve_notification_route(user).deliver_now
    end
  end