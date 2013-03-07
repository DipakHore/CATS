class CreateDownloadItems < ActiveRecord::Migration
  def change
    create_table :download_items do |t|
      t.integer :assignment_id
      t.string :path
      t.string :key

      t.timestamps
    end
  end
end
