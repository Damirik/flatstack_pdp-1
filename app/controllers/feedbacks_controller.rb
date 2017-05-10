class FeedbacksController < ApplicationController
  expose(:feedback, attributes: :feedback_params)

  def create
    FeedbackMailer.feedback(feedback).deliver_now if feedback.save
    respond_with(feedback, location: root_path)
  end

  private

  def feedback_params
    params.require(:feedback).permit(:email, :message, :name, :phone)
  end
end


