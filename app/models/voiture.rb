class Voiture < ApplicationRecord
    belongs_to :marque # Nom de la classe étrangère, en snake_case
    belongs_to :personne, optional: true

    def self.data
        contenu = File.read('./db/voitures.xml')
        h = Hash.from_xml(contenu)
        
        h['voitures'].each do |data| 
            t = Marque.where(libelle:data["marque"]["nom"])
            id = 0
            if (t.length > 0)
                id = t.first.id 
            else
                m =  Marque.create(libelle:data["marque"]["nom"])
                id = m.id
            end

            Voiture.create(
                immatriculation: data['immatriculation'], 
                couleur: data['couleur'],
                marque_id: id,
                modele: data['modele'],
                date_mise_en_service: data['date_mise_en_service'] 
            )
        end
    end
end