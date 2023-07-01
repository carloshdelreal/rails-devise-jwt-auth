# frozen_string_literal: true

FactoryBot.define do
  factory :planet do
    name { Faker::Movies::StarWars.droid }
    diameter { 1000 }
    rotation_period { '1' }
    orbital_period { '1' }
    gravity { '2.5' }
    population { '1.000.000' }
  end
end