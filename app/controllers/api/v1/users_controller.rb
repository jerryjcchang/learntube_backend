class Api::V1::UsersController < ApplicationController

	def index
	  render json: User.all
	end

	def show
	  render json: User.find(params[:id])
	end

	def create
	  render json: User.create(strong_params)
	end

	def update
		User.find(params[:id]).update(strong_params)
		render json: User.find(params[:id])
	end

	def destroy
		render json: User.find(params[:id]).destroy
	end

	private

	def strong_params
		params.require(:user).permit(:name, :username, :first_name,
		 :last_name, :status)
	end

end
