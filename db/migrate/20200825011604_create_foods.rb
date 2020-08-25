class CreateFoods < ActiveRecord::Migration[6.0]
  def change
    create_table :foods do |t|
      t.string :name
      t.string :price
      t.string :rating
      t.string :description
      t.references :trip, null: false, foreign_key: true

      t.timestamps
    end
  end
end
