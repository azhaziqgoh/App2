class PeopleController < ApplicationController
	def  new
	end

	def person_params
    	params.require(:person).permit(:group_id)
  	end

	def index
		@person = Person.all
		@group = Group.all
	end

	def create
  		@person = Person.new(person_params)
  		@person.save
  		redirect_to @person
	end

	def show
		@person = Person.find(params[:id])
	end
 
	private
  		def person_params
    		params.require(:person).permit(:name, :address, :telephone)
  		end
end
