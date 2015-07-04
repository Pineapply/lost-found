class AddLineNoToLine < ActiveRecord::Migration
  def change
    add_column :lines, :line_no, :string
  end
end
