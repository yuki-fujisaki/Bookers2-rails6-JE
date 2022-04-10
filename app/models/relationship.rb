class Relationship < ApplicationRecord
  # フォロー・フォロワー機能
  # relationshipsモデルがフォロー、フォロワーを判別できていない
  # - belongs_to :user
  belongs_to :follower, class_name: "User"
  belongs_to :followed, class_name: "User"
end
