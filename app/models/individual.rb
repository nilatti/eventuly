class Individual < ActiveRecord::Base
  belongs_to :family
  validates :first_name, presence: :true
  validates :last_name, presence: true

  def name
    self.first_name + " " + self.last_name
  end
end
