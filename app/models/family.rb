class Family < ActiveRecord::Base
	belongs_to :organization
	has_many :individuals, dependent: :destroy
	accepts_nested_attributes_for :individuals
end
