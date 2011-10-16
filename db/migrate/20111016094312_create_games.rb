class CreateGames < ActiveRecord::Migration
  def change
    create_table :games do |t|
      t.string :location
      t.timestamp :datetime
      t.string :creator
      t.integer :numplayers

      t.timestamps
    end
  end
end
