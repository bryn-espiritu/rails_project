class CreateMedicalServices < ActiveRecord::Migration[7.0]
  def change
    create_table :medical_services do |t|
      t.references :service
      t.references :payment
      t.references :medical_appointment
      t.timestamps
    end
  end
end
