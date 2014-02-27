class Group < ActiveRecord::Base
	has_many :people, dependent: :destroy
end
