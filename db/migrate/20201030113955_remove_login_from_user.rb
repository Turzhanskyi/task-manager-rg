class RemoveLoginFromUser < ActiveRecord::Migration[6.0]
  def change
    remove_column :users, :login, :string, null: false, default: ""
  end
end
