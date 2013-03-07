class CreateAssignments < ActiveRecord::Migration
  def change
    create_table :assignments do |t|
      t.string :title
      t.text :synopsis
      t.integer :rating
      t.string :attachmentName
      t.string :propertyLangugage
      t.string :propertyLanguageVersion
      t.string :propertyLicense
      t.string :popertyLicenseUrl
      t.string :propertyCourse
      t.string :propertyInfoUrl
      t.string :propertyEstimatedExperience
      t.string :propertyEstimatedTime
      t.string :propertyEstimatedSize
      t.string :propertyCopyright
      t.boolean :preferenceCommentNotify,      :default => false
      t.boolean :queueFlag,                    :default => false
      t.boolean :published,                    :default => false
      t.integer :statDownloads,                :limit => 8, :default => 0

      t.timestamps
    end
  end
end
