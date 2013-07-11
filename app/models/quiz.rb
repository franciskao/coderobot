class Quiz < ActiveRecord::Base
  belongs_to :course
  has_many :choices
  attr_accessible :answer, :title, :orderNum
end
