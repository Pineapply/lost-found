class CreateLines < ActiveRecord::Migration
  def change
    create_table :lines do |t|
      t.string :name
      t.string :description
      t.string :destination
      t.datetime :time

      t.timestamps null: false
    end
  end
end
