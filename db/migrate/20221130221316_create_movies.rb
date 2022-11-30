class CreateMovies < ActiveRecord::Migration[7.0]
  def change
    create_table :movies do |t|
      t.string :title
      t.string :genre
      t.integer :rating
      t.boolean :would_watch_again

      t.timestamps
    end
  end
end
