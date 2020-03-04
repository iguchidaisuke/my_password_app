class RenameMemoColumnToInformation < ActiveRecord::Migration[5.2]
  def change
    rename_column :information, :Memo, :memo
  end
end
