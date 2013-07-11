class Course < ActiveRecord::Base
  has_many :videos
  has_many :quizzes
  has_many :exercises
  attr_accessible :intro, :title
end
