class AddMemoToInformation < ActiveRecord::Migration[5.2]
  def change
    add_column :information, :Memo, :string
  end
end
