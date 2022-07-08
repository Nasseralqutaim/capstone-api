class CreateAddressUsers < ActiveRecord::Migration[7.0]
  def change
    create_table :address_users do |t|
      t.integer :user_id
      t.integer :address_id
      t.timestamps
    end
  end
end
