# frozen_string_literal: true

FactoryBot.define do
  factory :movie do
    name { 'MyString' }
    director { 'MyString' }
    release_date { '2020-12-10' }
    movie_category { nil }
    running_time { 1 }
  end
end
