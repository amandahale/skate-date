class Api::UsersController < ApplicationController
# before_action :authenticate_user

  def show
    if current_user
      @user = current_user
    else
      @user = User.find(params[:id])
    end
    render 'show.json.jbuilder'
  end

  def create
    @user = User.new(
      name: params[:name],
      email: params[:email],
      password: params[:password],
      password_confirmation: params[:password_confirmation]
      )
    
    if @user.save # happy path
      render 'show.json.jbuilder'
    else # sad path
      render json: {errors: @user.errors.full_messages}, status: :bad_request
    end
  end

  def update
    @user = User.find(params[:id])

    @user.name = params["name"] || @user.name
    @user.email = params["email"] || @user.email
    @user.password = params["password"] || @user.password
    @user.password_confirmation = params["password_confirmation"] || @user.password_confirmation

    if @user.save # happy path
      render 'show.json.jbuilder'
    else # sad path
       render json: {errors: @user.errors.full_messages}, status: :unprocessable_entity
    end
  end

  def destroy
    @user = User.find(params[:id])
    @user.destroy
    render json: {message: "User delete successful"}
  end

end
