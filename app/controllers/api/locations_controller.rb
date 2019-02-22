class Api::LocationsController < ApplicationController

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
      )

    if @location.save # happy path
      render json: {message: "Location Created Successfully"}, status: :created 
    else # sad path
      render json: {errors: location.errors.full_messages}, status: :bad_request      
    end
  end

end
