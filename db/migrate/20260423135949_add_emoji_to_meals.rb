class AddEmojiToMeals < ActiveRecord::Migration[8.1]
  def change
    add_column :meals, :emoji, :string
  end
end
