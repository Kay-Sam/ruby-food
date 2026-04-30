class CreateMeals < ActiveRecord::Migration[8.1]
  def change
    create_table :meals do |t|
      t.string :name
      t.string :category
      t.string :image_url
      t.text :description
      t.text :recipe_steps
      t.string :youtube_url

      t.timestamps
    end
  end
end
