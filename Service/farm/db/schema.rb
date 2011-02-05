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

ActiveRecord::Schema.define(:version => 20110203123458) do

# Could not dump table "area_items" because of following StandardError
#   Unknown type 'area' for column 'area_id'

  create_table "areas", :force => true do |t|
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "storage"
    t.string   "background"
    t.string   "inc_button"
    t.string   "dec_button"
    t.string   "collect_button"
    t.string   "storage_button"
  end

  create_table "item_types", :force => true do |t|
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "name"
    t.integer  "maxstate"
  end

# Could not dump table "type_pics" because of following StandardError
#   Unknown type 'item_type' for column 'item_type_id'

end
