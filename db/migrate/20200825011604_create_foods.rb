class CreateFoods < ActiveRecord::Migration[6.0]
  def change
    create_table :foods do |t|
      t.string :name
      t.boolean :tradutional
      t.string :raiting
      t.string :description
      t.references :trip, null: false, foreign_key: true

      t.timestamps
    end
  end
end
