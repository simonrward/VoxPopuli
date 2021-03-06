class OptionsController < ApplicationController
  def create
    @question = Question.find(params[:question_id])
    @option = @question.options.create(params[:option])
    redirect_to question_path(@question)
  end
 
  def vote 
    @option = Option.find(params[:option_id])
    @question = Question.find(params[:question_id])
     @option.increment(:count)
      respond_to do |format|
        if @option.save
          #format.html { redirect_to(@question, :notice => 'Good choice!') }
          format.html { redirect_to question_results_url, :notice => "Thanks. How's your vote doing?" }
          format.xml  { head :ok }        
        else 
          puts 'error saving'
        end
      end
   end
end
