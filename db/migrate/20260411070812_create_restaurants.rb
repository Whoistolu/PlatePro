class CreateRestaurants < ActiveRecord::Migration[8.0]
  def change
    create_table :restaurants do |t|
      t.string :name
      t.string :slug

      t.timestamps
    end
    add_index :restaurants, :slug, unique: true
    validates :slug, presence: true, uniqueness: true
  end
end
