class FeedbacksController < ApplicationController

  #index
  def index
    if current_user
      if current_user.id == 1
        @feedbacks = Feedback.all
      else
        redirect_to root_path
      end
    else
      redirect_to root_path
    end
  end

  #new
  def new
    @feedback = Feedback.new
    if current_user
    else
      redirect_to root_path
      flash[:alert] = "You have to sign in before leaving a feedback!"
    end
  end

  #create
  def create
    @feedback = Feedback.create!(feedback_params.merge(user: current_user))
    redirect_to root_path
    flash[:notice] = "Thanks a lot for your feedback!"
  end

  private
  def feedback_params
    params.require(:feedback).permit(:content)
  end

end
