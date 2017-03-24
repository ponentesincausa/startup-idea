class CreateGoods < ActiveRecord::Migration
  def change
    create_table :goods do |t|
      t.string :name
      t.string :url
      t.string :color
      t.string :logo

      t.timestamps null: false
    end
  end
end
