class Api::ListsController < ApplicationController

  before_action :authenticate_user

  def index
    @lists = List.all
    render 'index.json.jbuilder'
  end

  def create
    @list = List.new(
      store_name: params[:store_name],
      notes: params[:notes]
      )
    if @list.save
      render 'show.json.jbuilder'
    else 
      render json: {errors: @list.errors.full_messages}, status: :unprocessable_entity  
    end
  end

  def show
    @list = List.find(params[:id])
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
