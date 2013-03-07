class CreateComments < ActiveRecord::Migration
  def change
    create_table :comments do |t|
      t.text :body
      t.integer :assignment_id,    :null => false

      t.timestamps
    end
  end
end
