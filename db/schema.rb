# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `bin/rails
# db:schema:load`. When creating a new database, `bin/rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema[7.0].define(version: 2023_08_06_121540) do
  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "active_admin_comments", force: :cascade do |t|
    t.string "namespace"
    t.text "body"
    t.string "resource_type"
    t.bigint "resource_id"
    t.string "author_type"
    t.bigint "author_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["author_type", "author_id"], name: "index_active_admin_comments_on_author"
    t.index ["namespace"], name: "index_active_admin_comments_on_namespace"
    t.index ["resource_type", "resource_id"], name: "index_active_admin_comments_on_resource"
  end

  create_table "active_storage_attachments", force: :cascade do |t|
    t.string "name", null: false
    t.string "record_type", null: false
    t.bigint "record_id", null: false
    t.bigint "blob_id", null: false
    t.datetime "created_at", null: false
    t.index ["blob_id"], name: "index_active_storage_attachments_on_blob_id"
    t.index ["record_type", "record_id", "name", "blob_id"], name: "index_active_storage_attachments_uniqueness", unique: true
  end

  create_table "active_storage_blobs", force: :cascade do |t|
    t.string "key", null: false
    t.string "filename", null: false
    t.string "content_type"
    t.text "metadata"
    t.string "service_name", null: false
    t.bigint "byte_size", null: false
    t.string "checksum"
    t.datetime "created_at", null: false
    t.index ["key"], name: "index_active_storage_blobs_on_key", unique: true
  end

  create_table "active_storage_variant_records", force: :cascade do |t|
    t.bigint "blob_id", null: false
    t.string "variation_digest", null: false
    t.index ["blob_id", "variation_digest"], name: "index_active_storage_variant_records_uniqueness", unique: true
  end

  create_table "contacts", force: :cascade do |t|
    t.string "first_name"
    t.string "last_name"
    t.string "phone_number"
    t.string "email"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "jewelries", force: :cascade do |t|
    t.string "name_gr"
    t.string "name_en"
    t.text "description_gr"
    t.text "description_en"
    t.integer "price"
    t.string "theme_gr"
    t.string "theme_en"
    t.string "category_en"
    t.string "category_gr"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "messages", force: :cascade do |t|
    t.bigint "contact_id", null: false
    t.text "content"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "categories", default: [], array: true
    t.string "sub_categories", default: [], array: true
    t.index ["contact_id"], name: "index_messages_on_contact_id"
  end

  create_table "options", force: :cascade do |t|
    t.bigint "service_sub_category_id"
    t.string "title_en"
    t.string "title_gr"
    t.string "description_en"
    t.string "description_gr"
    t.integer "price"
    t.index ["service_sub_category_id"], name: "index_options_on_service_sub_category_id"
  end

  create_table "products", force: :cascade do |t|
    t.string "name_gr"
    t.string "name_en"
    t.text "description_gr"
    t.text "description_en"
    t.integer "price"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "service_categories", force: :cascade do |t|
    t.string "title_en"
    t.string "title_gr"
  end

  create_table "service_options", force: :cascade do |t|
    t.bigint "option_id"
    t.bigint "service_id"
    t.index ["option_id"], name: "index_service_options_on_option_id"
    t.index ["service_id"], name: "index_service_options_on_service_id"
  end

  create_table "service_sub_categories", force: :cascade do |t|
    t.string "title_en"
    t.string "title_gr"
  end

  create_table "services", force: :cascade do |t|
    t.string "title_gr"
    t.string "title_en"
    t.integer "price"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "time"
    t.string "sub_title_gr"
    t.string "sub_title_en"
    t.text "description_gr"
    t.text "description_en"
    t.string "genre_en"
    t.string "genre_gr"
    t.bigint "service_category_id"
    t.bigint "service_sub_category_id"
    t.index ["service_category_id"], name: "index_services_on_service_category_id"
    t.index ["service_sub_category_id"], name: "index_services_on_service_sub_category_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.boolean "admin", default: false, null: false
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

  add_foreign_key "active_storage_attachments", "active_storage_blobs", column: "blob_id"
  add_foreign_key "active_storage_variant_records", "active_storage_blobs", column: "blob_id"
  add_foreign_key "messages", "contacts"
  add_foreign_key "options", "service_sub_categories"
  add_foreign_key "service_options", "options"
  add_foreign_key "service_options", "services"
end
