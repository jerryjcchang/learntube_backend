class Api::V1::NotesController < ApplicationController

	def index
		render json: Note.all
	end

	def show
		render json: Note.find(params[:id])
	end

	def create
		render json: Note.create(strong_params)
	end

	def update
		Note.find(params[:id]).update(params)
		render json: Note.find(params[:id])
	end

	def get_notes_by_user_video
		# render json: Note.find(params[:user_id], params[:video_id])
		render json: Note.where("user_id = ? AND video_id = ?", params[:user_id], params[:video_id])
	end

	private

	def strong_params
		params.require(:note).permit(:user_id, :video_id, :timestamp,
		 :content)
	end
end
