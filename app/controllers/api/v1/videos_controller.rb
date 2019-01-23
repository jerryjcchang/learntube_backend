class Api::V1::VideosController < ApplicationController

	def index
	  render json: Video.all
	end

	def show
	  render json: Video.find(params[:id])
	end


 # Post request
	def create
	  render json: Video.create(strong_params)
	end

	private

	def strong_params
		params.require(:video).permit(:name, :description, :instructor,
		 :length, :category, :youtube_id)
	end
end
