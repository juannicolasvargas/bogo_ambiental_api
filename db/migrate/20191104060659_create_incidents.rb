class CreateIncidents < ActiveRecord::Migration[5.2]
  def change
    create_table :incidents do |t|
      t.belongs_to :user, foreign_key: true
      t.string :title
      t.text :description
      t.string :image

      t.timestamps
    end
  end
end
