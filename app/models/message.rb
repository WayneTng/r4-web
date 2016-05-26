class Message
  include NoBrainer::Document
  include NoBrainer::Document::Timestamps

  field :sender,    required: true
  field :room_id,   required: true
  field :receivers, required: true
  field :content,   required: true, type: Text

  belongs_to :user
end
