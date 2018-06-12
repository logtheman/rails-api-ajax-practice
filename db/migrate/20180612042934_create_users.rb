class CreateUsers < ActiveRecord::Migration[5.1]
  def change
    create_table :users do |t|
      t.string :name, uniqueness: true, presence: true
      t.string :username, uniqueness: true
      t.string :email, uniqueness: true, presence: true

      t.timestamps
    end
  end
end
