class Option < ActiveRecord::Base
  #validates :text, :presence => :true
  belongs_to :question
end
