class RenameImageToAvatarImageInUser < ActiveRecord::Migration[5.2]
  def change
    rename_column :users, :image, :avatar_image
  end
end
