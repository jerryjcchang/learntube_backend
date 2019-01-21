class NoteSerializer < ActiveModel::Serializer
  attributes :id, :video_id, :content
  belongs_to :video
end
