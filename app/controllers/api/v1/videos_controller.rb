class Api::V1::VideosController < ApplicationController

	def index
	  render json: Video.all
	end

	def show
	  render json: Video.find(params[:id])
	end


 # Post request
	def create
		vid = Video.new(strong_params)
		vid.cohord_id = 1
	  render json: Video.save
	end

	def update
		Video.find(params[:id]).update(strong_params)
		render json: Video.find(params[:id])
	end

	def destroy
		render json: Video.find(params[:id]).destroy
	end


	private

	def strong_params
		params.require(:video).permit(:name, :description, :instructor,
		 :length, :category, :youtube_id,)
	end
end
