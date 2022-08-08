class AddRoomPhotoToSubscribes < ActiveRecord::Migration[5.2]
  def change
    add_column :subscribes, :roomphoto, :string
  end
end
