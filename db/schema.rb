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

ActiveRecord::Schema.define(:version => 20140131074033) do

  create_table "species", :force => true do |t|
    t.string   "species_name"
    t.string   "common_name"
    t.datetime "created_at",   :null => false
    t.datetime "updated_at",   :null => false
  end

  add_index "species", ["species_name"], :name => "index_species_on_species_name", :unique => true

  create_table "specimen", :force => true do |t|
    t.string   "collection_site"
    t.date     "collection_date"
    t.string   "code"
    t.string   "picture"
    t.integer  "sex"
    t.decimal  "weight"
    t.boolean  "adult"
    t.integer  "species_id"
    t.datetime "created_at",      :null => false
    t.datetime "updated_at",      :null => false
  end

  add_index "specimen", ["species_id"], :name => "index_specimen_on_species_id"

  create_table "specimens", :force => true do |t|
    t.string   "collection_site"
    t.date     "collection_date"
    t.string   "code"
    t.string   "picture"
    t.integer  "sex"
    t.decimal  "weight"
    t.boolean  "adult"
    t.integer  "species_id"
    t.datetime "created_at",      :null => false
    t.datetime "updated_at",      :null => false
  end

  add_index "specimens", ["species_id"], :name => "index_specimens_on_species_id"

end
