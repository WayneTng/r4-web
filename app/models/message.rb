class Message
  include NoBrainer::Document
  include NoBrainer::Document::Timestamps

  field :sender_id,    type: String, required: true
  field :room_id,   required: true
  field :receivers, type: Array, required: true
  field :content,   required: true, type: Text

  belongs_to :user
end
