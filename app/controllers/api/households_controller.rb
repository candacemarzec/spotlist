class Api::HouseholdsController < ApplicationController

  before_action :authenticate_user

  def create
    @household = Household.new(
      name: params[:name]
      )
    if @household.save
      current_user.update(household_id: @household.id) 
      render 'show.json.jbuilder'
    else 
      render json: {errors: @household.errors.full_messages}, status: :unprocessable_entity
    end  
  end

  def show
    @household = current_user.household 
    render 'show.json.jbuilder'
   
  end

  def update
    @household = current_user.household
    @household.name = params[:name] || @household.name

    if params[:new_member_email]
      user = User.find_by(email: params[:new_member_email])
      if user 
        user.update(household_id: params[:id])
      else 
        return render json: {errors: ["Email does not exist"]}, status: :unprocessable_entity 
      end  
    end

    if @household.save
      render 'show.json.jbuilder'
    else 
      render json: {errors: @household.errors.full_messages}, status: :unprocessable_entity
    end 
  end

  def destroy
    @household = current_user.household
    if @household.save
      current_user.update(household_id: nil) 
      render json: {message: "Household has been deleted from this account."}       
    end
  end

end