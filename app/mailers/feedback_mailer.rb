class FeedbackMailer < ApplicationMailer

  def feedback(feedback)
    @feedback = feedback
    mail from: @feedback.email, body: @feedback.message, to: ENV.fetch("FEEDBACK_EMAIL")
  end
end
