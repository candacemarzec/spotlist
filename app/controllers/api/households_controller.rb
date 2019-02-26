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
    @household = Household.find_by(id: params[:id])
    render 'show.json.jbuilder'
   
  end

  def update
    @household = Household.find_by(id: params[:id])
    @household.name = params[:name] || @household.name

    if @household.save
      render 'show.json.jbuilder'
    else 
      render json: {errors: @household.errors.full_messages}, status: :unprocessable_entity
    end 
  end

  def destroy
    @household = Household.find(params[:id])
    @household.destroy 
    render json: {message: "Household has been deleted."}
  end
end
