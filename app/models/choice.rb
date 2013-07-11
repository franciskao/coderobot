class Choice < ActiveRecord::Base
  belongs_to :quiz
  attr_accessible :body, :index, :isAnswer
end
