class RemovePorofileImageIdFromUsers < ActiveRecord::Migration[5.2]
  def change
    remove_column :users, :porofile_image_id, :string
  end
end
