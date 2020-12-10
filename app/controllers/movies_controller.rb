# frozen_string_literal: true

# This is the movies controller
class MoviesController < ApplicationController
  def index
    @movies = Movie.all
  end
end
