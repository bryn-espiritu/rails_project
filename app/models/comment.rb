
class Comment < ApplicationRecord
  validates :fname, presence: true
  validates :email, presence: true
  belongs_to :post
end

