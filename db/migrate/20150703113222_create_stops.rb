class CreateStops < ActiveRecord::Migration
  def change
    create_table :stops do |t|

      t.timestamps null: false
    end
  end
end
