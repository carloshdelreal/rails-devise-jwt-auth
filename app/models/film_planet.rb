# frozen_string_literal: true

class FilmPlanet < ApplicationRecord
  belongs_to :film
  belongs_to :planet
end
