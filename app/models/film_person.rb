class FilmPerson < ApplicationRecord
  belongs_to :film
  belongs_to :people
end
