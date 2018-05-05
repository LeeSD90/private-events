class CreateInvitations < ActiveRecord::Migration[5.2]
  def change
    create_table :invitations, :id => false do |t|
    	t.column :user_id, :integer
    	t.column :event_id, :integer
      t.timestamps
    end
  end
end
