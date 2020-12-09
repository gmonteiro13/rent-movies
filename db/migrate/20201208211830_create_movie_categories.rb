# frozen_string_literal: true

# This is the migration description
class CreateMovieCategories < ActiveRecord::Migration[6.0]
  def change
    create_table :movie_categories do |t|
      t.string :name

      t.timestamps
    end
  end
end
