require 'pry'
class User
    attr_accessor :email #on définit une variable d'instance lisible et modifiable

    def initialize(email_to_save)   #on définit un initialize
        if check_email(email_to_save)   # on vérifie l’e-mail proposé via une méthode check_email (cf plus bas)
            @email = email_to_save  #si l’e-mail passe le check => on le sauve dans l'instance
        else
            puts "Brrr! ERREUR!! Brrr!! EMAIL FOIREUX!!! Brr!! Recommence Mother fukcing noob!" #si l’e-mail ne passe pas le check => message d'erreur
        end
    end

    def check_email(email_to_save)
        # du code pour vérifier le format de l’e-mail (on ne rentre pas dans le détail)
    # si l’e-mail est ok, ça renvoie TRUE. Sinon FALSE
    end
end
# La logique est très bonne, sauf que avec ce code nous pourrions avoir accès à une méthode `julie.check_email(exemple_d_email)` qui nous renverrait TRUE ou FALSE. Ce `julie.check_email(exemple_d_email)` n'a pas trop de sens, car on peut entrer n'importe quel `exemple_d_email` sans rapport avec l'objet `julie`.

# Pour ne pas pouvoir faire ce genre d'appel à `check_email` qui serait un hors-sujet voire (dans d'autres exemples de méthodes) dangereux, **on va définir `check_email`comme étant une méthode privée** (par défaut, une méthode est "publique").  
  
# **Les méthodes privées peuvent être exécutées depuis le code de la classe mais pas à l'extérieur (donc pas de `julie.check_email` possible)**

# Voici un exemple :
require "pry"
class User
  def truc_public
    # on peut faire julie.truc_public
  end

  private #Toutes les méthodes en dessous de cette balise seront privées. A mettre en bas de ta classe donc !

  def truc_private
    # impossible de faire julie.truc_private
  end

end