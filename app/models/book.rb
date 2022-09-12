class Book < ApplicationRecord
  belongs_to :user
  has_many :book_comments
  has_many :favorites

  acts_as_taggable_on :tags
  
  validates :title,presence:true
  validates :body,presence:true,length:{maximum:200}
  
  def favorited_by?(user)
    favorites.where(user_id: user.id).exists?
  end
end
