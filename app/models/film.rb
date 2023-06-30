class Film < ApplicationRecord
  has_many :film_people
  has_many :people, through: :film_people, class_name: 'Person'

  has_many :film_planets
  has_many :planets, through: :film_planets
end
