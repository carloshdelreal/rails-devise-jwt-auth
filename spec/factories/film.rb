# frozen_string_literal: true

FactoryBot.define do
  factory :film do
    title { Faker::Movie.title }
    episode_id { 1 }
    opening_crawl { 'crawl' }
    director { 'Steven spilberg' }
  end
end