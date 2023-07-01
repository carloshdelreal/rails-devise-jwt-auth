# frozen_string_literal: true

class FilmSerializer
  include JSONAPI::Serializer
  attributes :title, :episode_id, :opening_crawl, :director, :producer, :release_date

  has_many :people
  has_many :planets
end
