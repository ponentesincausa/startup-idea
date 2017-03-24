class CreateProblems < ActiveRecord::Migration
  def change
    create_table :problems do |t|
      t.string :name
      t.string :url
      t.string :color
      t.string :logo

      t.timestamps null: false
    end
  end
end
