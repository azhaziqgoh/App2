class GroupsController < ApplicationController
	def new
	end

	def index
		@group = Group.all
	end

	def create
  		@group = Group.new(group_params)
 
  		@group.save
  		redirect_to @group
	end

	def show
		@group = Group.find(params[:id])
	end
 
	private
  		def group_params
    		params.require(:group).permit(:groupname)
  		end
end


