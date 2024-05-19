class AnswersController < ApplicationController
  def submit
    params[:answers].each do |question_id, answer_ids|
      answer_ids.each do |answer_id|
        UserAnswer.create(user_id: current_user.id, answer_id: answer_id)
      end
    end

    redirect_to results_path
  end
end
