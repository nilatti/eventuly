class Organization < ActiveRecord::Base
	has_many :events, dependent: :destroy
	has_many :families, dependent: :destroy
end
