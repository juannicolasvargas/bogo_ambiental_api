class CreateWetlands < ActiveRecord::Migration[5.2]
  def change
    create_table :wetlands do |t|
      t.string :name
      t.text :description
      t.string :image
      t.float :latitude
      t.float :longitude

      t.timestamps
    end
  end
end
