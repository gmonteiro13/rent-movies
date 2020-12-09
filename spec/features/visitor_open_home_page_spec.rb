# frozen_string_literal: true

require 'rails_helper'

feature 'Visitor open home page' do
  scenario 'successfully' do
    visit root_path

    expect(page).to have_content('Brick Busters')
    expect(page).to have_content('Seja bem-vindo à sua plataforma de aluguel e revisão de filmes!')
  end
end
