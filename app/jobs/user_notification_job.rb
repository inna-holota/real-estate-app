class UserNotificationJob < ApplicationJob
  queue_as :default

  def perform(*args)
    sleep 60
    true
  end
end
