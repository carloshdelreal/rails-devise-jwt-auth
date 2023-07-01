# frozen_string_literal: true

FactoryBot.define do
  factory :person do
    name { Faker::Name.first_name }
    birth_year { '1990' }
    eye_color { 'brow' }
    gender { 'male' }
  end
end