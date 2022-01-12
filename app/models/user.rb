class User < ApplicationRecord
  validates :name, {presence: true}

  def posts
    return Post.where(user_id: self.id)
  end
end
