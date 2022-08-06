class AddSomeToReserves < ActiveRecord::Migration[5.2]
  def change
    add_column :reserves, :start_date, :datetime
    add_column :reserves, :end_date, :datetime
    add_column :reserves, :headcount, :integer
    add_column :reserves, :user_id, :integer
    add_column :reserves, :reserve_id, :string
  end
end