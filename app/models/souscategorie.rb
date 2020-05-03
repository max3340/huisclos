class Souscategorie < ApplicationRecord
  belongs_to :categorie
  has_many :projets
end
