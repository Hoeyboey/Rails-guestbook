class AddPosterNameToArticles < ActiveRecord::Migration[5.1]
  def change
    add_column :articles, :poster_name, :string
  end
end
