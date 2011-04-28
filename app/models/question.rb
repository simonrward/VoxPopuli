class Question < ActiveRecord::Base
  validates :text, :presence => {:message => 'A question normally has text...'}
  has_many :options, :dependent => :destroy
end
