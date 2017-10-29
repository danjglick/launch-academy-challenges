class MembersController < ApplicationController
	def new
		@member = Member.new
		@house = House.find(params[:house_id])
	end

	def create
		@member = Member.new(member_params)
		@house = House.find(params[:house_id])
		@member.house_id = @house.id
    if @member.save
    	flash[:notice] = "Member added successfully!"
      redirect_to @house
    else
    	flash[:alert] = "Failed to save answer"
    	@form_error = @member.errors.full_messages
      render :new
    end
	end

	private

	def member_params
		params.require(:member).permit(
			:first_name,
			:last_name
		)
	end
end