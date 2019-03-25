class Api::LocationsController < ApplicationController

  before_action :authenticate_user, except: [:index, :show]

  def index
    @locations = Location.all
      render 'index.json.jbuilder'
  end

  def create
    @location = Location.new(
      name: params[:name],
      address: params[:address],
      image_url: params[:image_url],
      weblink: params[:weblink]
      description: params[:description]
      )

    if @location.save # happy path
      render 'show.json.jbuilder' 
    else # sad path
      render json: {errors: location.errors.full_messages}, status: :bad_request      
    end
  end

  def show
    @location = Location.find(params[:id])
    @favorite = Favorite.find_by(user_id: current_user.id, location_id: params[:id])
    render 'show.json.jbuilder'
  end

  def update
    @location = Location.find(params[:id])
      @location.name = params[:name] || @location.name
      @location.address = params[:address] || @location.address
      @location.image_url = params[:image_url] || @location.image_url
      @location.weblink = params[:weblink] || @location.weblink
      @location.description = params[:description] || @location.description
      

      if @location.save # happy path
        render 'show.json.jbuilder' 
      else # sad path
        render json: {errors: @location.errors.full_messages}, status: :bad_request      
      end
  end

  def destroy
    @location = Location.find(params[:id])
    @location.destroy
    render json: {message: "Location has been removed from the database"}
  end

end
