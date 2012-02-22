class AddEventsReferences < ActiveRecord::Migration
  def up
  	alter_table :events do |t|
  		t.references :user
  	end
  end

  def down
  end
end
