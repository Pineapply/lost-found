class AddPolymorphicToItem < ActiveRecord::Migration
  def change
    change_table(:items) do |t|
      t.references :itemable, polymorphic: true, index: true
    end
  end
end
