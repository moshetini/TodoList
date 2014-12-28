class Todo < ActiveRecord::Base
  attr_accessible :date, :description, :done, :title

  validates_presence_of :title
end
