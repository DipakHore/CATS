class CreateFacebookUsers < ActiveRecord::Migration
  def change
    create_table :facebook_users do |t|
      t.integer :uid,                         :limit => 8, :null => false
      t.string :sessionKey
      t.string :sessionExpires
      t.datetime :lastAccess
      t.string :affiliation
      t.integer :accessLevel,                 :limit => 1, :default => 0
      t.boolean :preferenceCommentNotify,     :default => false

      t.timestamps
    end
  end
end
