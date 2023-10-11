class CreateArtifacts < ActiveRecord::Migration[7.0]
  def change
    create_table :artifacts do |t|
      t.string :name
      t.string :street
      t.string :url
      t.integer :address_id

      t.timestamps
    end
  end
end
