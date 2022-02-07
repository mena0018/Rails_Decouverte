class Voiture < ApplicationRecord


    def age
        ((Date.today - date_mise_en_service).to_i) /365
    end
end
