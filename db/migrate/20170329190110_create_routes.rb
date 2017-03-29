class CreateRoutes < ActiveRecord::Migration[5.0]
  def change
    create_table :routes do |t|
      t.string :destination
      t.string :origin

      t.timestamps
    end
  end
end
