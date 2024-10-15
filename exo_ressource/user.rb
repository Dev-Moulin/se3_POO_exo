
require "pry"

#Ici,tu as une classe User qui contient une méthode greet :
class User
    def greet
        puts "Bonjour, monde!"
    end
end     #fin de ma classe

binding.pry         #Quand tu exécutes ce code (ruby user.rb dans la console) Cela va te faire entrer dans une console interactive (PRY), où tu peux écrire des commandes et tester ton code en direct.
puts "end of file"  #Quand tu as fini avec PRY, tu peux taper exit pour quitter la session PRY et le programme continuera jusqu'à la ligne puts "end of file". Cela affichera "end of file" dans la console.

# julie = User.new   # crée une instance 'julie'
# jean = User.new    # crée une instance 'jean'

# julie.greet        # fait dire "Bonjour, monde!" à 'julie'
# jean.greet         # fait dire "Bonjour, monde!" à 'jean'




