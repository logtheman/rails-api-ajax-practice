class CreateReviews < ActiveRecord::Migration[5.1]
  def change
    create_table :reviews do |t|
      t.references :restaurant, foreign_key: true, presence: true
      t.references :user, foreign_key: true, presence: true
      t.string :title, uniqueness: true, presence: true
      t.string :body
      t.integer :rating

      t.timestamps
    end
  end
end
