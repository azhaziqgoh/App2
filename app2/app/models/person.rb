class Person < ActiveRecord::Base
	belongs_to :group
	validates_associated :group
	validates :name, uniqueness: { message: "One record only" }
end
