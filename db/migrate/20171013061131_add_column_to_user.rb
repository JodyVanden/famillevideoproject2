class AddColumnToUser < ActiveRecord::Migration[5.1]
  def change
    add_column :users, :allow_non_public, :boolean
  end
end
