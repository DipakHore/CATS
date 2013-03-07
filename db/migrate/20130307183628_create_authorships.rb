class CreateAuthorships < ActiveRecord::Migration
  def change
    create_table :authorships do |t|
      t.integer :assignment_id,     :null => false
      t.integer :role,              :default => 1

      t.timestamps
    end
  end
end
