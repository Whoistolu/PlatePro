class CreateRestaurants < ActiveRecord::Migration[8.0]
  def change
    create_table :restaurants do |t|
      t.string :name
      t.string :slug

      t.timestamps
    end
    add_index :restaurants, :slug, unique: true
  end
end
