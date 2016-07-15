class Room
  include NoBrainer::Document
  include NoBrainer::Document::Timestamps

  field :receivers

  has_many :messages
  has_many :users
end
