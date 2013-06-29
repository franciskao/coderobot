class Video < ActiveRecord::Base
  belongs_to :course
  attr_accessible :description, :img, :order, :title, :url
end
