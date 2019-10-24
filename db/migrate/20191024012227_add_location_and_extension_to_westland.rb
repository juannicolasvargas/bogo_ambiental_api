class AddLocationAndExtensionToWestland < ActiveRecord::Migration[5.2]
  def change
    add_column :wetlands, :location, :string
    add_column :wetlands, :extension, :string
  end
end
