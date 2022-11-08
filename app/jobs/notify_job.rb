class NotifyJob < ApplicationJob
  queue_as :default
  # NotifyJob.set(wait: 30.minutes).perform_later()

  def perform(*args)
    UserMailer.notify_email().deliver_later
  end
end
