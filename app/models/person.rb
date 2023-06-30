class Person < ApplicationRecord
  has_many :film_people
  has_many :films, through: :film_people
  belongs_to :planet
end
