class Message < ApplicationRecord
  validates :content, length: {maximum: 50}
end
