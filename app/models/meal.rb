class Meal < ActiveRecord::Base
  include Timely

  belongs_to :event

  validate :end_after_start
  validate :during_event
end
