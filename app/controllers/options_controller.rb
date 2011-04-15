class OptionsController < ApplicationController
  def create
    @question = Question.find(params[:question_id])
    @option = @question.options.create(params[:option])
    redirect_to question_path(@question)
  end
end
