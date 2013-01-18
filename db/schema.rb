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

ActiveRecord::Schema.define(:version => 20130118054151) do

  create_table "causes", :force => true do |t|
    t.string   "name"
    t.text     "description"
    t.string   "website"
    t.datetime "created_at",  :null => false
    t.datetime "updated_at",  :null => false
  end

  create_table "causes_events", :id => false, :force => true do |t|
    t.integer "cause_id"
    t.integer "event_id"
  end

  add_index "causes_events", ["cause_id", "event_id"], :name => "index_causes_events_on_cause_id_and_event_id"

  create_table "event_types", :force => true do |t|
    t.string   "name"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "event_types_events", :id => false, :force => true do |t|
    t.integer "event_type_id"
    t.integer "event_id"
  end

  add_index "event_types_events", ["event_type_id", "event_id"], :name => "index_event_types_events_on_event_type_id_and_event_id"

  create_table "events", :force => true do |t|
    t.string   "name"
    t.datetime "start_time"
    t.datetime "end_time"
    t.string   "emcees"
    t.string   "featured_guests"
    t.integer  "cost_door",       :limit => 255, :default => 0
    t.string   "attire"
    t.text     "description"
    t.string   "contact"
    t.datetime "created_at",                                    :null => false
    t.datetime "updated_at",                                    :null => false
    t.integer  "cost_pre_order",  :limit => 255, :default => 0
    t.datetime "doors_time"
    t.string   "min_age"
  end

  create_table "events_locations", :id => false, :force => true do |t|
    t.integer "event_id"
    t.integer "location_id"
  end

  add_index "events_locations", ["event_id", "location_id"], :name => "index_events_locations_on_event_id_and_location_id"

  create_table "events_organizations", :id => false, :force => true do |t|
    t.integer "event_id"
    t.integer "organization_id"
  end

  add_index "events_organizations", ["event_id", "organization_id"], :name => "index_events_organizations_on_event_id_and_organization_id"

  create_table "locations", :force => true do |t|
    t.string   "name"
    t.string   "street_address"
    t.string   "city"
    t.string   "state"
    t.string   "zip"
    t.string   "cross_streets"
    t.string   "website"
    t.datetime "created_at",     :null => false
    t.datetime "updated_at",     :null => false
  end

  create_table "organizations", :force => true do |t|
    t.string   "name"
    t.boolean  "is_main",    :default => false
    t.datetime "created_at",                    :null => false
    t.datetime "updated_at",                    :null => false
  end

end
