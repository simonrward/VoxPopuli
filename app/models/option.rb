class Option < ActiveRecord::Base
  validates :text, :presence => {:message => ': Please enter some text.'}
  belongs_to :question
end
