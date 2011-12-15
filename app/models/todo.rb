class Todo < ActiveRecord::Base
  validates_presence_of :name
  validates_presence_of :due
end

