class Question < ActiveRecord::Base
  validates :text, :presence => {:message => 'A question normally comproses of text...'}
  has_many :options
end
