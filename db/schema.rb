# frozen_string_literal: true

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

ActiveRecord::Schema[7.0].define(version: 20_230_630_203_341) do
  create_table 'film_people', force: :cascade do |t|
    t.integer 'film_id', null: false
    t.integer 'person_id', null: false
    t.index ['film_id'], name: 'index_film_people_on_film_id'
    t.index ['person_id'], name: 'index_film_people_on_person_id'
  end

  create_table 'film_planets', force: :cascade do |t|
    t.integer 'film_id', null: false
    t.integer 'planet_id', null: false
    t.index ['film_id'], name: 'index_film_planets_on_film_id'
    t.index ['planet_id'], name: 'index_film_planets_on_planet_id'
  end

  create_table 'films', force: :cascade do |t|
    t.string 'title'
    t.integer 'episode_id'
    t.string 'opening_crawl'
    t.string 'director'
    t.string 'producer'
    t.time 'release_date'
    t.time 'created'
    t.time 'edited'
  end

  create_table 'people', force: :cascade do |t|
    t.string 'name'
    t.string 'birth_year'
    t.string 'eye_color'
    t.string 'gender'
    t.string 'hair_color'
    t.string 'height'
    t.string 'mass'
    t.string 'skin_color'
    t.integer 'homeworld'
    t.integer 'planet_id', null: false
    t.time 'created'
    t.time 'edited'
    t.index ['planet_id'], name: 'index_people_on_planet_id'
  end

  create_table 'planets', force: :cascade do |t|
    t.string 'name'
    t.string 'diameter'
    t.string 'rotation_period'
    t.string 'orbital_period'
    t.string 'gravity'
    t.string 'population'
    t.string 'climate'
    t.string 'terrain'
    t.string 'surface_water'
    t.time 'created'
    t.time 'edited'
  end

  create_table 'users', force: :cascade do |t|
    t.string 'email', default: '', null: false
    t.string 'encrypted_password', default: '', null: false
    t.string 'reset_password_token'
    t.datetime 'reset_password_sent_at'
    t.datetime 'remember_created_at'
    t.datetime 'created_at', null: false
    t.datetime 'updated_at', null: false
    t.string 'jti', null: false
    t.index ['email'], name: 'index_users_on_email', unique: true
    t.index ['jti'], name: 'index_users_on_jti', unique: true
    t.index ['reset_password_token'], name: 'index_users_on_reset_password_token', unique: true
  end

  add_foreign_key 'film_people', 'films'
  add_foreign_key 'film_people', 'people'
  add_foreign_key 'film_planets', 'films'
  add_foreign_key 'film_planets', 'planets'
  add_foreign_key 'people', 'planets'
end
