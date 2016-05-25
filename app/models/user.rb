class User
  include NoBrainer::Document
  include NoBrainer::Document::Timestamps

  field :email, :type => String, uniq: true
  field :password, :type => String

  has_many :messages
  has_many :rooms
end
