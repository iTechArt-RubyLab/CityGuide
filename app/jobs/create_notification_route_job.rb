class CreateNotificationRouteJob < ApplicationJob
  queue_as :default

  def perform(user, notification_messsage)
    CreateNotificationMailer.with(user: user).create_notification_route(user, notification_messsage).deliver_now
  end
end
