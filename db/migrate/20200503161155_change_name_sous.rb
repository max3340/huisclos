class ChangeNameSous < ActiveRecord::Migration[6.0]
  def change
    rename_column :projets, :souscategorie_id, :souscategory_id
  end
end
