class User < ApplicationRecord
  belongs_to :chat
  belongs_to :person
  has_secure_token
end
