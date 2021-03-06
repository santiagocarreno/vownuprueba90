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

ActiveRecord::Schema.define(version: 20150315031337) do

  create_table "campaigns", force: :cascade do |t|
    t.integer  "Campaign_id"
    t.string   "name"
    t.date     "date_start"
    t.date     "date_end"
    t.string   "days"
    t.string   "hours"
    t.string   "status_campaign"
    t.datetime "created_at",      null: false
    t.datetime "updated_at",      null: false
  end

  create_table "user_providers", force: :cascade do |t|
    t.integer "user_id"
    t.string  "provider"
    t.string  "uid"
    t.string  "token"
    t.string  "secret"
    t.string  "provider_url"
    t.string  "username"
    t.integer "reach_in"
    t.integer "reach_out"
    t.integer "likes"
    t.integer "shares"
    t.integer "comments"
  end

  add_index "user_providers", ["user_id"], name: "index_user_providers_on_user_id"

  create_table "users", force: :cascade do |t|
    t.string   "email",                  default: "", null: false
    t.string   "encrypted_password",     default: "", null: false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          default: 0,  null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip"
    t.string   "last_sign_in_ip"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "username"
    t.string   "name"
    t.boolean  "is_foundation"
    t.string   "photo_url"
    t.string   "description"
    t.string   "categories"
    t.boolean  "profile_completed?"
    t.string   "phone"
    t.string   "oauth_secret"
    t.string   "oauth_token"
  end

  add_index "users", ["email"], name: "index_users_on_email", unique: true
  add_index "users", ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true

end
