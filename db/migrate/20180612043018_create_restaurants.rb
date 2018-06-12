class CreateRestaurants < ActiveRecord::Migration[5.1]
  def change
    create_table :restaurants do |t|
      t.references :user, foreign_key: true
      t.string :name, uniqueness: true, presence: true
      t.string :description
      t.string :url
      t.float :lat
      t.float :lng
      t.string :address

      t.timestamps
    end
  end
end
