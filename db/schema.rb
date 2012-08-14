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

ActiveRecord::Schema.define(:version => 20120814084629) do

  create_table "box_styles", :force => true do |t|
    t.string   "name"
    t.text     "draft_drawing"
    t.datetime "created_at",    :null => false
    t.datetime "updated_at",    :null => false
  end

  create_table "carton_boxes", :force => true do |t|
    t.decimal "length",           :precision => 8, :scale => 2
    t.decimal "width",            :precision => 8, :scale => 2
    t.decimal "height",           :precision => 8, :scale => 2
    t.integer "box_style_id"
    t.integer "material_code_id"
    t.decimal "customer_length",  :precision => 8, :scale => 2
    t.decimal "customer_width",   :precision => 8, :scale => 2
    t.decimal "customer_height",  :precision => 8, :scale => 2
  end

  add_index "carton_boxes", ["box_style_id"], :name => "index_carton_boxes_on_box_style_id"
  add_index "carton_boxes", ["material_code_id"], :name => "index_carton_boxes_on_material_code_id"

  create_table "categories", :force => true do |t|
    t.string   "name"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "companies", :force => true do |t|
    t.string   "name"
    t.decimal  "manufacturing_lead"
    t.string   "email"
    t.string   "website"
    t.string   "registration_no"
    t.integer  "currency_id"
    t.datetime "created_at",         :null => false
    t.datetime "updated_at",         :null => false
  end

  add_index "companies", ["currency_id"], :name => "index_companies_on_currency_id"

  create_table "currencies", :force => true do |t|
    t.string   "code"
    t.string   "name"
    t.decimal  "rounding"
    t.boolean  "active"
    t.integer  "accuracy"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "material_codes", :force => true do |t|
    t.string   "name"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "partners", :force => true do |t|
    t.string   "name"
    t.decimal  "credit_limit",    :precision => 16, :scale => 6
    t.boolean  "is_supplier"
    t.boolean  "active",                                         :default => true
    t.integer  "agent_id"
    t.string   "email"
    t.string   "website"
    t.boolean  "is_customer"
    t.string   "search_key"
    t.string   "registration_no"
    t.datetime "created_at",                                                       :null => false
    t.datetime "updated_at",                                                       :null => false
  end

  create_table "products", :force => true do |t|
    t.string   "name"
    t.string   "type"
    t.boolean  "stocked"
    t.boolean  "sale"
    t.boolean  "purchase"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  add_index "products", ["name"], :name => "index_products_on_name", :unique => true

  create_table "roles", :force => true do |t|
    t.string   "name"
    t.integer  "resource_id"
    t.string   "resource_type"
    t.datetime "created_at",    :null => false
    t.datetime "updated_at",    :null => false
  end

  add_index "roles", ["name", "resource_type", "resource_id"], :name => "index_roles_on_name_and_resource_type_and_resource_id"
  add_index "roles", ["name"], :name => "index_roles_on_name"

  create_table "users", :force => true do |t|
    t.string   "email",                  :default => "", :null => false
    t.string   "name",                   :default => ""
    t.string   "username",               :default => "", :null => false
    t.string   "encrypted_password",     :default => "", :null => false
    t.string   "time_zone"
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          :default => 0
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip"
    t.string   "last_sign_in_ip"
    t.datetime "created_at",                             :null => false
    t.datetime "updated_at",                             :null => false
  end

  add_index "users", ["email"], :name => "index_users_on_email", :unique => true
  add_index "users", ["reset_password_token"], :name => "index_users_on_reset_password_token", :unique => true
  add_index "users", ["username"], :name => "index_users_on_username", :unique => true

  create_table "users_roles", :id => false, :force => true do |t|
    t.integer "user_id"
    t.integer "role_id"
  end

  add_index "users_roles", ["user_id", "role_id"], :name => "index_users_roles_on_user_id_and_role_id"

  create_view "view_carton_boxes", "SELECT products.id, products.name, products.type, products.stocked, products.sale, products.purchase, products.created_at, products.updated_at, carton_boxes.length, carton_boxes.width, carton_boxes.height, carton_boxes.box_style_id, carton_boxes.material_code_id, carton_boxes.customer_length, carton_boxes.customer_width, carton_boxes.customer_height FROM products, carton_boxes WHERE (products.id = carton_boxes.id);", :force => true do |v|
    v.column :id
    v.column :name
    v.column :type
    v.column :stocked
    v.column :sale
    v.column :purchase
    v.column :created_at
    v.column :updated_at
    v.column :length
    v.column :width
    v.column :height
    v.column :box_style_id
    v.column :material_code_id
    v.column :customer_length
    v.column :customer_width
    v.column :customer_height
  end

end
