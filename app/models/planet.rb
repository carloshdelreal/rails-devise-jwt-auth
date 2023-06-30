class Planet < ApplicationRecord
  has_many :people

  has_many :film_planets
  has_many :films, through: :film_planets
end
