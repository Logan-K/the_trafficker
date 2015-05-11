class RemoveIntFromElements < ActiveRecord::Migration
  def change
    remove_column :elements, :int
    change_column :elements, :progress, :int
  end
end
