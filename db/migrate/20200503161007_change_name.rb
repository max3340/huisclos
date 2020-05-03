class ChangeName < ActiveRecord::Migration[6.0]
  def change
    rename_column :souscategories, :categorie_id, :category_id
  end
end
