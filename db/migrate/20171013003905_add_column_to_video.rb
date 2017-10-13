class AddColumnToVideo < ActiveRecord::Migration[5.1]
  def change
    add_column :videos, :youtube_id, :string
    add_column :videos, :is_public, :boolean

  end
end
