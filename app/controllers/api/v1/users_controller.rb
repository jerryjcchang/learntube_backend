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
		# byebug
		if !User.find(params[:user_id]).videos.include?(Video.find(params[:video_id]))
			User.find(params[:user_id]).videos << Video.find(params[:video_id])
			render json: User.find(params[:user_id]).videos.find(params[:video_id])
		end
	end

	def remove_video
		UsersVideo.find_by(user_id: params[:user_id], video_id: params[:video_id]).delete
		render json: Video.find(params[:video_id]).id
	end

	private
	def strong_params
		params.require(:user).permit(:name, :username, :first_name,
		 :last_name, :status)
	end

end
