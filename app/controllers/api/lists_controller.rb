class Api::ListsController < ApplicationController

  before_action :authenticate_user

  def index
    @lists = current_user.lists
    render 'index.json.jbuilder'
  end

  def create
    @list = List.new(
      store_name: params[:store_name],
      notes: params[:notes],
      user_id: current_user.id,
      household_id: current_user.household_id
      )
    if @list.save
      render 'show.json.jbuilder'
    else 
      puts @list.errors.full_messages
      render json: {errors: @list.errors.full_messages}, status: :unprocessable_entity  
    end
  end

  def show
    @list = current_user.list
    render 'show.json.jbuilder'
  end
  
  def update
    @list = List.find(params[:id])
    @list.store_name = params[:store_name] || @list.store_name
    @list.notes = params[:notes] || @list.notes

    if @list.save
      render 'show.json.jbuilder'
    else 
      render json: {errors: @list.errors.full_messages}, status: :unprocessable_entity  
    end
  end


  def destroy
    @list = List.find(params[:id])
    @list.destroy
    render json: {message: "The list has been deleted."}
  end

end
