class AddSubscribeIdToReserve < ActiveRecord::Migration[5.2]
  def change
    add_column :reserves, :subscribe_id, :integer
  end
end
