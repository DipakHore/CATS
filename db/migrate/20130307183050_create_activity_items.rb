class CreateActivityItems < ActiveRecord::Migration
  def change
    create_table :activity_items do |t|
      t.string :sentence,          :null => false
      t.integer :assignment_id,    :null => false

      t.timestamps
    end
  end
end
