class Post < ApplicationRecord
  validates :content, {presence: true, length: {maximum: 255}}
  validates :user_id, {presence: true}
end
