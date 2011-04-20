class OptionsController < ApplicationController
  def create
    @question = Question.find(params[:question_id])
    @option = @question.options.create(params[:option])
    redirect_to question_path(@question)
  end
 
  def vote 
     option = Option.find(params[:option_id])
     option.increment(:count)
     if option.save
        format.html { redirect_to(@question, :notice => 'Thanks for voting!') }
     else 
       puts 'error saving'
     end
   end
end
