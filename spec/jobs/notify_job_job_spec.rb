require "rails_helper"

RSpec.describe NotifyJob, :type => :job do
  describe "should succeed (job is enqueued)" do
    it "enqueues NotifyJob" do
      ActiveJob::Base.queue_adapter = :test
      expect {
        NotifyJob.perform_later
      }.to have_enqueued_job
    end
  end
  
  describe "should succeed (job is enqueued 30 minutes from now)" do
    it "enqueues NotifyJob to perform in 30" do
      later = 30.minutes.from_now
      ActiveJob::Base.queue_adapter = :test
      expect {
        NotifyJob.set(wait_until: later).perform_later
      }.to have_enqueued_job.at(later)
    end
  end
end
