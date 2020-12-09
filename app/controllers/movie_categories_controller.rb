# frozen_string_literal: true

# This is the movie categories controller
class MovieCategoriesController < ApplicationController
  def index
    @movie_categories = MovieCategory.all
  end
end
