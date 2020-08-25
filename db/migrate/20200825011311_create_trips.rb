class CreateTrips < ActiveRecord::Migration[6.0]
  def change
    create_table :trips do |t|
      t.string :location
      t.string :country
      t.string :date
      t.string :image

      t.timestamps
    end
  end
end
