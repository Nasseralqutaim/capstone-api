class CreateHistoricalEvents < ActiveRecord::Migration[7.0]
  def change
    create_table :historical_events do |t|
      t.integer :address_id
      t.integer :year
      t.text :description

      t.timestamps
    end
  end
end
