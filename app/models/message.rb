class Message
  include NoBrainer::Document
  include NoBrainer::Document::Timestamps

  field :content, :type => Text, required: true
  field :sender, :type => Integer
  field :receivers, :type => Text

  belongs_to :user
end
