class Post < ApplicationRecord

  default_scope { where(delete_at: nil) }
  validates :fname, presence: true
  validates :lname, presence: true
  validates :email, presence: true
  validates :address, presence: true
  validates :cnum, presence: true

  has_many :comments
  has_many :post_category_ships, dependent: :restrict_with_exception
  has_many :categories, through: :post_category_ships

  def destroy
    update(delete_at: Time.now)
  end
end
