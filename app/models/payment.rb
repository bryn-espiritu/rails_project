class Payment < ApplicationRecord

  validates :method, presence: true

  has_many :medical_services
  has_many :medical_appointments, through: :medical_services

end
