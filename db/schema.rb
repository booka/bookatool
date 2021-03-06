# This file is auto-generated from the current state of the database. Instead of editing this file, 
# please use the migrations feature of Active Record to incrementally modify your database, and
# then regenerate this schema definition.
#
# Note that this schema.rb definition is the authoritative source for your database schema. If you need
# to create the application database on another system, you should be using db:schema:load, not running
# all the migrations from scratch. The latter is a flawed and unsustainable approach (the more migrations
# you'll amass, the slower it'll run and the greater likelihood for issues).
#
# It's strongly recommended to check this file into your version control system.

ActiveRecord::Schema.define(:version => 20091026112716) do

  create_table "bips", :force => true do |t|
    t.string   "group"
    t.integer  "position"
    t.integer  "clip_id"
    t.integer  "child_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "bips", ["group"], :name => "index_bips_on_group"

  create_table "clips", :force => true do |t|
    t.string   "title"
    t.string   "description"
    t.string   "type"
    t.text     "body"
    t.string   "media_file_name"
    t.string   "media_content_type"
    t.integer  "media_file_size"
    t.datetime "media_updated_at"
    t.integer  "project_id"
    t.integer  "user_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "clips", ["project_id"], :name => "index_clips_on_project_id"
  add_index "clips", ["title"], :name => "index_clips_on_title"
  add_index "clips", ["type"], :name => "index_clips_on_type"

end
