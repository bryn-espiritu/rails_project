class MedicalService < ApplicationRecord
  belongs_to :medical_appointment
  belongs_to :service
  belongs_to :payment
end
