class NoteSerializer < ActiveModel::Serializer
  attributes :id, :user_id, :video_id, :timestamp, :content
  belongs_to :video
  belongs_to :user
end
