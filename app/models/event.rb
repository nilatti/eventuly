class Event < ActiveRecord::Base
  include Timely

  belongs_to :organization
  validates :organization, presence: :true

  has_many :sessions, dependent: :destroy

  has_many :meals, dependent: :destroy

  has_many :accommodations, dependent: :destroy

  validate :end_after_start
  validates :start_time, :end_time, :presence => true

end
