class CreateAppointments < ActiveRecord::Migration[6.0]
  def change
    create_table :appointments do |t|
      t.time :start_time
      t.time :end_time
      t.date :date
      t.references :doctor, null: false, foreign_key: true
      t.references :patient, null: false, foreign_key: true 
      t.timestamps
    end
  end
end
