class CreateTrades < ActiveRecord::Migration
  def change
    create_table :trades do |t|
      t.string :name
      t.integer:day
      t.string :uid
      t.string :master
      t.string :state
      
      t.timestamps null: false
    end
  end
end
