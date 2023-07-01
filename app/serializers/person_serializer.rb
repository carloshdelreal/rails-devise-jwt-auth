# frozen_string_literal: true

class PersonSerializer
  include JSONAPI::Serializer
  attributes :name, :birth_year, :eye_color, :gender, :hair_color, :height, :mass, :skin_color, :homeworld

  has_many :films
end
