class CreateLocations < ActiveRecord::Migration
  def change
    create_table :locations do |t|
      t.string :name
      t.string :address
      t.string :lat
      t.string :long

      t.timestamps
    end
  end
end
