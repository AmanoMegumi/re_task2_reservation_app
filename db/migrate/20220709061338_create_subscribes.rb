class CreateSubscribes < ActiveRecord::Migration[5.2]
  def change
    create_table :subscribes do |t|
      t.string   :roomname
      t.string   :explanation
      t.integer  :price
      t.string   :address
      t.string   :room_photo

      t.timestamps
    end
  end
end
