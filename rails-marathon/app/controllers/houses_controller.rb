class HousesController < ApplicationController

	def index
		@houses = House.all
	end

	def new
		@house = House.new
	end

	def create
		@house = House.new(house_params)
    if @house.save
    	flash[:notice] = "House added successfully: #{@house.motto}"
      redirect_to '/houses'
    else
    	flash[:alert] = "Failed to save answer"
    	@form_error = @house.errors.full_messages
      render :new
    end
	end

	def show
		@house = House.find(params[:id])
		@members = @house.members
	end

	private

	def house_params
		params.require(:house).permit(
			:name,
			:author,
			:source,
			:motto
		)
	end
end