class Doctor < ApplicationRecord
	has_many :appointments
	has_many :patients

end
