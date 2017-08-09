class CreatePosts < ActiveRecord::Migration
  def change
    create_table :posts do |t|
      t.string :name
      t.integer :day
      t.integer :amount
      t.integer :left
      t.integer :res
      t.string :master
      t.string :image

      t.timestamps null: false
    end
  end
end
