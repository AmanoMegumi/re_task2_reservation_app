class AddSubscribeIdToSubscribes < ActiveRecord::Migration[5.2]
  def change
    add_column :subscribes, :subscribe_id, :integer
  end
end
