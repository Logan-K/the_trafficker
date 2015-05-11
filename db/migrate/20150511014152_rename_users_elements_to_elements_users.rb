class RenameUsersElementsToElementsUsers < ActiveRecord::Migration
  def change
    rename_table :users_elements, :elements_users
  end
end
