class CreateMedicalAppointments < ActiveRecord::Migration[7.0]
  def change
    create_table :medical_appointments do |t|
      t.string :first_name
      t.string :last_name
      t.string :email
      t.integer :cp_number
      t.string :service
      t.string :payment
      t.time :time
      t.date :date
      t.timestamps
    end
  end
end
