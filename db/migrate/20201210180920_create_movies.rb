# frozen_string_literal: true

# This is the migration description
class CreateMovies < ActiveRecord::Migration[6.0]
  def change
    create_table :movies do |t|
      t.string :name
      t.string :director
      t.date :release_date
      t.references :movie_category, null: false, foreign_key: true
      t.integer :running_time

      t.timestamps
    end
  end
end
