class CreateProjets < ActiveRecord::Migration[6.0]
  def change
    create_table :projets do |t|
      t.string :name
      t.string :extrait
      t.string :details
      t.string :youtube
      t.string :site
      t.references :souscategorie, null: false, foreign_key: true

      t.timestamps
    end
  end
end
