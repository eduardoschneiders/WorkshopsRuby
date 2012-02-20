class CreateEvents < ActiveRecord::Migration
  def change
    create_table :events do |t|
      t.string :title
      t.string :description
      t.datetime :starts_at
      t.datetime :ends_at
      t.string :where

      t.timestamps
    end
  end
end
