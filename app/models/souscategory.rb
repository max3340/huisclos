class Souscategory < ApplicationRecord
  belongs_to :category
  has_many :projets
end
