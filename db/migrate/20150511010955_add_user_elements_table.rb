class AddUserElementsTable < ActiveRecord::Migration
  def change
    create_table :users_elements, id: false do |t|
      t.belongs_to :user, index: true
      t.belongs_to :element, index: true
    end
  end
end
