class CreateFlights < ActiveRecord::Migration[5.0]
  def change
    create_table :flights do |t|
      t.string :flight_name
      t.references :route, foreign_key: true
      t.timestamp :departure
      t.timestamp :arrival
      t.integer :number_of_passengers
      t.string :aircraft_type
      t.boolean :arrived
      t.boolean :stocked
      t.boolean :cleaned

      t.timestamps
    end
  end
end
