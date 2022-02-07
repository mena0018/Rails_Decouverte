class Date
    def age
        # Calcul du nombre d'années écoulées depuis la date
        ((Date.today - self).to_i) /365
    end
end