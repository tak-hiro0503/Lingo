# This controller manages the actions related to QuestionTypes and their associated Questions.
class QuestionsController < ApplicationController
  def index
    @question_types = QuestionType.includes(:questions).all
  end
end
