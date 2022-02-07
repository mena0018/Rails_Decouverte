class Marque < ApplicationRecord
    has_many :voitures # On remarquera qu'il y a un s au pluriel : Rails vous apprend la grammaire !
end
