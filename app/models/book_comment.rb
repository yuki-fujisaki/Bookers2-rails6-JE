class BookComment < ApplicationRecord
    belongs_to :user
    belongs_to :book
    # 非同期コメント機能修正箇所
    # 存在しないバリデーションがある
    # - validates :comment, presence: true
    validates :body, presence: true
end
