# frozen_string_literal: true

require 'rails_helper'

feature 'Admin view available movies' do
  scenario 'sucessfully' do
    suspense = MovieCategory.create!(name: 'Suspense')
    misterio = MovieCategory.create!(name: 'Misterio')
    Movie.create!(name: 'Parasita', release_date: '07/11/2019', director: 'Bong Joon-Ho', movie_category: suspense, running_time: 132)
    Movie.create!(name: 'Entre Facas e Segredos', release_date: '05/12/2019', director: 'Rian Johnson', movie_category: misterio, running_time: 130)

    visit root_path
    click_on 'Todos os filmes'

    expect(current_path).to eq movies_path
    expect(page).to have_content('Parasita')
    expect(page).to have_content('Entre Facas e Segredos')
  end
end
