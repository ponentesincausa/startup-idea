class CreateTrends < ActiveRecord::Migration
  def change
    create_table :trends do |t|
      t.string :name
      t.string :url
      t.string :color
      t.string :logo

      t.timestamps null: false
    end
  end
end
