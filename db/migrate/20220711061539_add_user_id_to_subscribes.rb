class AddUserIdToSubscribes < ActiveRecord::Migration[5.2]
  def change
    add_column :subscribes, :user_id, :integer
  end
end
