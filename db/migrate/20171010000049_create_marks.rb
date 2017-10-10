class CreateMarks < ActiveRecord::Migration[5.1]
  def change
    create_table :marks do |t|
      t.integer :mark
      t.references :video, foreign_key: true
      t.references :user, foreign_key: true

      t.timestamps
    end
  end
end
