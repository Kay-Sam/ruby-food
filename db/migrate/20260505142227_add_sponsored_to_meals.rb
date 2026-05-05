class AddSponsoredToMeals < ActiveRecord::Migration[8.1]
  def change
    add_column :meals, :sponsored, :boolean
    add_column :meals, :sponsor_name, :string
    add_column :meals, :sponsor_link, :string
  end
end
