class AddFkToEvents < ActiveRecord::Migration[5.2]
  def change
  	add_foreign_key :users, :events, column: :creator_id
  end
end
