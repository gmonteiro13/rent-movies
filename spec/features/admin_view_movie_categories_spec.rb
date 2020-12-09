# frozen_string_literal: true

require 'rails_helper'

feature 'Admin view movie categories' do
  scenario 'successfully' do
    MovieCategory.create!(name: 'Suspense')
    MovieCategory.create!(name: 'Drama')

    visit root_path
    click_on 'Categorias'

    expect(current_path).to eq movie_categories_path
    expect(page).to have_content('Suspense')
    expect(page).to have_content('Drama')
  end
end
