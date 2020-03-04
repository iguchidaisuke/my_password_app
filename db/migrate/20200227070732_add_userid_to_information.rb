class AddUseridToInformation < ActiveRecord::Migration[5.2]
  def change
    add_column :information, :user_id, :integer
  end
end
