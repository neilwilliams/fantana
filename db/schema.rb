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

ActiveRecord::Schema.define(version: 20171125141810) do

  create_table "clients", force: :cascade do |t|
    t.string "first_name"
    t.string "last_name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "councellors", force: :cascade do |t|
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "first_name"
  end

  create_table "enquiries", force: :cascade do |t|
    t.integer "entered_by"
    t.integer "organisation_id"
    t.integer "client_id"
    t.boolean "client_used_before"
    t.string "referred_by"
    t.string "first_name"
    t.string "last_name"
    t.integer "telephone"
    t.boolean "contact_via_voicemail"
    t.boolean "contact_via_text"
    t.string "email"
    t.date "date_of_birth"
    t.string "address_1"
    t.string "address_2"
    t.string "address_3"
    t.string "address_4"
    t.string "address_5"
    t.string "address_6"
    t.integer "issue_type_id"
    t.integer "issue_sub_type_id"
    t.string "job_title"
    t.string "department"
    t.boolean "full_time"
    t.boolean "in_work"
    t.string "recommended_from"
    t.string "enquiry_type_id"
    t.string "availability"
    t.string "location"
    t.integer "action_id"
    t.integer "councellor_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "issue_status", default: 0
    t.integer "enquiry_type", default: 0
    t.integer "action_type", default: 0
    t.index ["action_id"], name: "index_enquiries_on_action_id"
    t.index ["client_id"], name: "index_enquiries_on_client_id"
    t.index ["councellor_id"], name: "index_enquiries_on_councellor_id"
    t.index ["entered_by"], name: "index_enquiries_on_entered_by"
    t.index ["issue_sub_type_id"], name: "index_enquiries_on_issue_sub_type_id"
    t.index ["issue_type_id"], name: "index_enquiries_on_issue_type_id"
    t.index ["organisation_id"], name: "index_enquiries_on_organisation_id"
  end

  create_table "enquiry_types", force: :cascade do |t|
    t.string "enquiry_type"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "issue_sub_types", force: :cascade do |t|
    t.string "sub_issue"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "issue_types", force: :cascade do |t|
    t.string "issue"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end
