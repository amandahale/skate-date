class Api::FavoritesController < ApplicationController

before_action :authenticate_user

  def create
    @favorite = Favorite.new(
      user_id: current_user.id,
      location_id: params[:location_id]
      )
    if @favorite.save #happy path
      render 'show.json.jbuilder'
    else #sad path
      render json: {errors: @favorite.errors.full_messages}, status: :unprocessable_entity
    end 
  end

  def destroy
    @favorite = Favorite.find(params[:id])
    @favorite.destroy
    render json: {message: "This location is no longer your favorite"}
  end

end
