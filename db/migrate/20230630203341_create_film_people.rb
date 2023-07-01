# frozen_string_literal: true

class CreateFilmPeople < ActiveRecord::Migration[7.0]
  def change
    create_table :film_people do |t|
      t.references :film, null: false, foreign_key: true
      t.references :person, null: false, foreign_key: true
    end
  end
end
