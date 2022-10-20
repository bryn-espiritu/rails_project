class MedicalAppointment < ApplicationRecord
  validates :first_name, presence: true
  validates :last_name, presence: true
  validates :email, presence: true
  validates :cp_number, presence: true
  validates :service, presence: true
  validates :payment, presence: true
  validates :time, presence: true
  validates :date, presence: true
end
