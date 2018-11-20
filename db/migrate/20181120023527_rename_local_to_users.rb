class RenameLocalToUsers < ActiveRecord::Migration[5.1]
  def change
    rename_column :users, :local, :locale
  end
end
