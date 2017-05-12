class CreateReviews < ActiveRecord::Migration[5.0]
  def change
    create_table :reviews do |t|
      t.string :author
      t.string :content
      t.references :cocktail, foreign_key: true

      t.timestamps
    end
  end
end