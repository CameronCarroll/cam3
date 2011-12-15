class Todo < ActiveRecord::Base
  
  validates_presence_of :name
  validates :due, :date => {:after => Proc.new {Time.now}}
end

