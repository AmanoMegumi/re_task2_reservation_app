class RemoveRoomPhotoFromSubscribes < ActiveRecord::Migration[5.2]
  def change
    remove_column :subscribes, :room_photo, :string
  end
end
