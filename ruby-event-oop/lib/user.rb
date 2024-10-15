# require 'bundler'
class User
    attr_accessor :email, :age
    @@all_user = []

    def initialize(email, age)
        @email = email
        @age = age
        @@all_user << self # ici self reprend les @email et @age entrée par les utilisateurs du demon
        #(utilise "self" pour faire référence à l'objet créé dans le initialize)
    end

    def self.all
        @@all_user # C'est comme si on disait "return @@user" en gros cela permet d'accèder a @@all_user vue que l'on ne peut pas y accéder a cause de attr_accessor..
    end

end
 binding.pry
 puts User.all.inspect
 puts "end of mes fesse"