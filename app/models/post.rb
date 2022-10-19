class Post < ApplicationRecord

  validates :fname, presence: true
  validates :lname, presence: true
  validates :email, presence: true
  validates :address, presence: true
  validates :cnum, presence: true

end
