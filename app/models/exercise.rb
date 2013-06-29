class Exercise < ActiveRecord::Base
  belongs_to :course
  attr_accessible :answer, :question
end
