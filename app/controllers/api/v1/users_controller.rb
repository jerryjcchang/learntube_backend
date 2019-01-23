class Api::V1::UsersController < ApplicationController

	def index
	  render json: User.all
	end

	def show
	  render json: User.find(params[:id])
	end

	def update
		User.find(params[:id]).update(params)
		render json: User.find(params[:id])
	end

	def add_video
		User.find(params[:user_id]).videos << Video.find(params[:video_id])
		render json: User.find(params[:user_id]).videos.last
	end

	private
	def strong_params
		params.require(:user).permit(:name, :username, :first_name,
		 :last_name, :status)
	end

end
