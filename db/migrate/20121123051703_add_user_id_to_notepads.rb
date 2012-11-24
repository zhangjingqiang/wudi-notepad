class AddUserIdToNotepads < ActiveRecord::Migration
  def change
    add_column :notepads, :user_id, :integer
  end
end
