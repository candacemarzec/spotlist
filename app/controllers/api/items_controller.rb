class Api::ItemsController < ApplicationController

  before_action :authenticate_user

  def create
    @item = Item.new(
      name: params[:name],
      coupon_url: params[:coupon_url],
      image_url: params[:image_url],
      need_by_date: params[:need_by_date],
      quantity: params[:quantity],
      list_id: params[:list_id],
      user_id: current_user.id
      )
    if @item.save
      render 'show.json.jbuilder'
    else 
      render json: {errors: @item.errors.full_messages}, status: :unprocessable_entity
    end  
  end


  def show
    @item = current_user.item
    render 'show.json.jbuilder'
  end

  def update
    @item = Item.find_by(id: params[:id])
    @item.name = params[:name] || @item.name
    @item.coupon_url = params[:coupon_url] || @item.coupon_url
    @item.image_url = params[:image_url] || @item.image_url
    @item.need_by_date = params[:need_by_date] || @item.need_by_date
    @item.quantity = params[:quantity] || @item.quantity

    if @item.save
      render 'show.json.jbuilder'
    else 
      render json: {errors: @item.errors.full_messages}, status: :unprocessable_entity
    end 
  end

  def destroy
    @item = Item.find(params[:id])
    @item.destroy 
    render json: {message: "Item has been deleted."}
  end


end
