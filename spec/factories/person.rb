# frozen_string_literal: true
require 'faker'


FactoryBot.define do
  factory :person do
    name { Faker::Name.first_name }
    planet { create :planet}
    birth_year { '1990' }
    eye_color { 'brow' }
    gender { 'male' }
  end
end