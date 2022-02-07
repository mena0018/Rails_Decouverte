class Voiture < ApplicationRecord
    belongs_to :marque # Nom de la classe étrangère, en snake_case
    belongs_to :personne 
end