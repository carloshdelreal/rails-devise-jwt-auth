# frozen_string_literal: true

class FilmPerson < ApplicationRecord
  belongs_to :film
  belongs_to :person
end
