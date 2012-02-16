class CreateNotices < ActiveRecord::Migration
  def change
    create_table :notices do |t|
      t.string :title
      t.string :text
      t.string :credits
      t.string :editorial
      t.boolean :approved
      t.string :address

      t.timestamps
    end
  end
end