require 'pry'

class User
    attr_accessor :email
    def initialize(email_to_save)
        @email = email_to_save
        puts "On envoie un email de Bienvenue !!"
    end
end

binding.pry
puts "end of file"

    # julie = User.new("julie@julie.com") #dès le départ, tu rattaches un email à l'instance et affiche un message
    # #tu vas avoir un affichage dans le terminal : "On envoie un email de Bienvenue !!"

    # julie.email #on vérifie que l’e-mail est bien enregistré. ok, ça retourne => "julie@julie.com"

    # jean = User.new #tu vas avoir une erreur car tu as oublié l’e-mail => ArgumentError (wrong number of arguments (given 0, expected 1))