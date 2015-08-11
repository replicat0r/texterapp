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
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 20150724200912) do

  create_table "electricians", force: :cascade do |t|
    t.string   "category"
    t.string   "name"
    t.integer  "phone",        limit: 8
    t.string   "location"
    t.string   "website"
    t.decimal  "score"
    t.integer  "num_reviews"
    t.string   "products"
    t.text     "services"
    t.string   "brands"
    t.string   "styles"
    t.text     "specialties"
    t.string   "year"
    t.integer  "num_of_emp"
    t.string   "return_pol"
    t.string   "payment"
    t.string   "licenses"
    t.string   "membership"
    t.integer  "liability",    limit: 1
    t.integer  "worker_comp",  limit: 1
    t.integer  "bonded",       limit: 1
    t.integer  "contract",     limit: 1
    t.string   "warranty"
    t.string   "diplomas"
    t.string   "project_min"
    t.string   "project_rate"
    t.text     "profile"
    t.datetime "created_at",             null: false
    t.datetime "updated_at",             null: false
  end

end
