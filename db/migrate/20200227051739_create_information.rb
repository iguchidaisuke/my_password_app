class CreateInformation < ActiveRecord::Migration[5.2]
  def change
    create_table :information do |t|
      t.string :info_name,null:false
      t.string :password,null:false
      t.string :email
      t.string :phone_number
      t.timestamps
    end
  end
end
