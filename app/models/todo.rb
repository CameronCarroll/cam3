class Todo < ActiveRecord::Base
  include ActiveModel::Validations

  class DateValidator < ActiveModel::EachValidator
    def validate_each(record, attribute, value)
      record.errors[attribute] << "must be a valid datetime" unless (DateTime.parse(value) rescue nil)
    end
  end
  
  validates_presence_of :name
  validates_presence_of :due, :date => true
end

