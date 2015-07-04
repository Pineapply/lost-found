class RemoveItemableIdFromItem < ActiveRecord::Migration
  def change
    remove_column :items, :itemable_id
    remove_column :items, :itemable_type
  end
end
