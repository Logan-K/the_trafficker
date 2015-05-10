class CreateElements < ActiveRecord::Migration
  def change
    create_table :elements do |t|
      t.string :description
      t.references :user, index: true
      t.string :progress
      t.string :int

      t.timestamps null: false
    end
    add_foreign_key :elements, :users
  end
end
