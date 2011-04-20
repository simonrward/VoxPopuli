class Question < ActiveRecord::Base
  validates :text, :presence => {:message => 'A question normally has text...'}
  has_many :options, :dependent => :destroy
  
  def vote_up 
     option = Option.find(params[:option_id])
     option.increment(:count)
   end
end
