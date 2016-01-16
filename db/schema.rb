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

ActiveRecord::Schema.define(version: 20160116035723) do

  create_table "orders", force: :cascade do |t|
    t.string   "customer_name"
    t.string   "orderer_name"
    t.string   "orderer_phone"
    t.datetime "planned_delivery_datetime"
    t.string   "receiver_name"
    t.string   "receiver_phone"
    t.text     "receiver_address"
    t.string   "order_status"
    t.string   "product_name"
    t.text     "remark"
    t.string   "handler"
    t.float    "money_received"
    t.datetime "created_at",                null: false
    t.datetime "updated_at",                null: false
  end

end
