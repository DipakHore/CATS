# encoding: UTF-8
# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# Note that this schema.rb definition is the authoritative source for your
# database schema. If you need to create the application database on another
# system, you should be using db:schema:load, not running all the migrations
# from scratch. The latter is a flawed and unsustainable approach (the more migrations
# you'll amass, the slower it'll run and the greater likelihood for issues).
#
# It's strongly recommended to check this file into your version control system.

ActiveRecord::Schema.define(:version => 20130307183854) do

  create_table "activity_items", :force => true do |t|
    t.string   "sentence",      :null => false
    t.integer  "assignment_id", :null => false
    t.datetime "created_at",    :null => false
    t.datetime "updated_at",    :null => false
  end

  create_table "assignments", :force => true do |t|
    t.string   "title"
    t.text     "synopsis"
    t.integer  "rating"
    t.string   "attachmentName"
    t.string   "propertyLangugage"
    t.string   "propertyLanguageVersion"
    t.string   "propertyLicense"
    t.string   "popertyLicenseUrl"
    t.string   "propertyCourse"
    t.string   "propertyInfoUrl"
    t.string   "propertyEstimatedExperience"
    t.string   "propertyEstimatedTime"
    t.string   "propertyEstimatedSize"
    t.string   "propertyCopyright"
    t.boolean  "preferenceCommentNotify",                  :default => false
    t.boolean  "queueFlag",                                :default => false
    t.boolean  "published",                                :default => false
    t.integer  "statDownloads",               :limit => 8, :default => 0
    t.datetime "created_at",                                                  :null => false
    t.datetime "updated_at",                                                  :null => false
  end

  create_table "authorships", :force => true do |t|
    t.integer  "assignment_id",                :null => false
    t.integer  "role",          :default => 1
    t.datetime "created_at",                   :null => false
    t.datetime "updated_at",                   :null => false
  end

  create_table "comments", :force => true do |t|
    t.text     "body"
    t.integer  "assignment_id", :null => false
    t.datetime "created_at",    :null => false
    t.datetime "updated_at",    :null => false
  end

end
