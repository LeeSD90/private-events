class AddFksToInvitation < ActiveRecord::Migration[5.2]
  def change
  	add_foreign_key :invitations, :users, column: :user_id
  	add_foreign_key :invitations, :events, column: :event_id
  end
end
