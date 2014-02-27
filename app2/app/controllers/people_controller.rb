class PeopleController < ApplicationController
	def  new
		@person = Person.new
	end

	def index
		@person = Person.all
		@group = Group.all
	end

	def create
  		@person = Person.new(person_params)
  		if @person.save
  			redirect_to @person
  		else
  			render 'new'
  		end
	end

	def show
		@person = Person.find(params[:id])
	end

	def destroy
		@person = Person.find(params[:id])
  		@person.destroy
 
  		redirect_to people_path
	end
 
	private
  		def person_params
    		params.require(:person).permit(:name, :address, :telephone, :group_id)
  		end
end
