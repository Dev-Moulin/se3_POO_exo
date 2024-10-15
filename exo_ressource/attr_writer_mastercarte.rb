require "pry"

class User
    attr_writer :mastercard # à mettre en en-tête de ta classe

    def read_mastercard
        return @mastercard
    end
end

binding.pry
puts "end of file"

    # julie = User.new

    # julie.mastercard = "4242 4242 4242 4242" # va sauvegarder cette valeur dans la variable de l'instance julie
    # julie.mastercard # retourne une erreur : on ne peut pas lire la variable facilement
    # julie.read_mastercard # on a créé une méthode spécifique pour la lire. Ici ça retourne bien : => "4242 4242 4242 4242"