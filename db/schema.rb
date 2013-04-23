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

ActiveRecord::Schema.define(:version => 20130422100142) do

  create_table "artists", :force => true do |t|
    t.string   "name"
    t.text     "bio"
    t.string   "kind"
    t.string   "country_id"
    t.boolean  "hot",         :default => false
    t.string   "avatar_uid"
    t.string   "avatar_name"
    t.string   "permalink"
    t.datetime "created_at",                     :null => false
    t.datetime "updated_at",                     :null => false
  end

  create_table "categories", :force => true do |t|
    t.string   "name"
    t.string   "permalink"
    t.boolean  "hot",        :default => false
    t.datetime "created_at",                    :null => false
    t.datetime "updated_at",                    :null => false
  end

  create_table "countries", :force => true do |t|
    t.string   "name"
    t.string   "permalink"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "episodes", :force => true do |t|
    t.string   "name"
    t.string   "server_id"
    t.string   "movie_id"
    t.string   "link"
    t.string   "permalink"
    t.string   "id_media"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "feedbacks", :force => true do |t|
    t.integer  "episode_id"
    t.string   "kind"
    t.string   "date"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "movie_actors", :force => true do |t|
    t.string   "movie_id"
    t.string   "actor_id"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "movie_categories", :force => true do |t|
    t.string   "movie_id"
    t.string   "category_id"
    t.datetime "created_at",  :null => false
    t.datetime "updated_at",  :null => false
  end

  create_table "movie_directors", :force => true do |t|
    t.string   "movie_id"
    t.string   "director_id"
    t.datetime "created_at",  :null => false
    t.datetime "updated_at",  :null => false
  end

  create_table "movie_makers", :force => true do |t|
    t.string   "name"
    t.string   "permalink"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "movie_servers", :force => true do |t|
    t.string   "movie_id"
    t.string   "server_id"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "movies", :force => true do |t|
    t.string   "name"
    t.string   "original_name"
    t.string   "country_id"
    t.date     "release_date"
    t.date     "premiere_date"
    t.string   "movie_maker_id"
    t.text     "info"
    t.integer  "plays",          :default => 0
    t.string   "kind",           :default => "a"
    t.string   "link_trailer"
    t.boolean  "hot",            :default => false
    t.string   "length"
    t.string   "image_uid"
    t.string   "image_name"
    t.string   "permalink"
    t.boolean  "has_shown",      :default => false
    t.integer  "rating_total",   :default => 0
    t.integer  "rating_times",   :default => 0
    t.float    "rating_point",   :default => 0.0
    t.string   "id_media"
    t.datetime "created_at",                        :null => false
    t.datetime "updated_at",                        :null => false
  end

  create_table "notifications", :force => true do |t|
    t.text     "content"
    t.boolean  "hot",        :default => false
    t.datetime "created_at",                    :null => false
    t.datetime "updated_at",                    :null => false
  end

  create_table "servers", :force => true do |t|
    t.string   "name"
    t.string   "permalink"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "users", :force => true do |t|
    t.string   "email",                  :default => "",  :null => false
    t.string   "encrypted_password",     :default => "",  :null => false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          :default => 0
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip"
    t.string   "last_sign_in_ip"
    t.string   "role",                   :default => "u"
    t.datetime "created_at",                              :null => false
    t.datetime "updated_at",                              :null => false
  end

  add_index "users", ["email"], :name => "index_users_on_email", :unique => true
  add_index "users", ["reset_password_token"], :name => "index_users_on_reset_password_token", :unique => true

end
