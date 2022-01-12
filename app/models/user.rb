class User < ApplicationRecord
  validates :name, {presence: true}

  def posts
    return Post.where(user_id: self.id)
  end

  def posts_order_desc
    return Post.where(user_id: self.id).order(created_at: :desc)
  end

  def posts_count
    return Post.where(user_id: self.id).count
  end
end
