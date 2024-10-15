

class Event
    attr_accessor :start_date, :duration, :title, :attendees
    #ce sont mes attributs de l'évenement 
    @@event = []
    def initialize(start_date, duration, title, attendees)
        @start_date = Time.parse(start_date)
        @duration = duration #duration n'a pas besoin de Event.new, il doit simplement être une valeur numérique apparament.
        @title = title # idem que duration, simplement une chaine de caractères représentant l'évènement.
        @attendees = attendees # idem attendees sont des liste de personnes (ici des liste d'email)

        # le tout doit figuré dans un array
        @@event << self
        
    end

    def postpone_24h(start_date)
    
        @start_date = my_time + 86400
        # `my_time + 3600`, tu avances d'une heure (3600 secondes). 24h= 86400
    end

    def end_date(start_date, duration)
        my_time = Time.now
        @start_date = my_time.strftime("%H:%M:%S %d/%m/%Y") - start_date
        @duration = my_time.strftime("%H:%M:%S %d/%m/%Y") - @duration
    end

    def is_past?(start_date)
        my_time = Time.now
        if my_time > @start_date 
            puts "l'événement est passer...zut!"
        end
    end

    def is_future?(start_date)
        my_time = Time.now
        if my_time < @start_date
            puts "l'événement n'a pas encore commencer !"
        end
    end

    def is_soon?(start_date)

        start_date - Time.now < 1800

    end

    def to_s
        puts ">Titre : #{@title}"
        puts ">Date de début : #{@start_date}"
        puts ">Durée : #{@duration} minutes"
        print ">Invités :"
        puts @attendees.join(", ") # ici ont sépart chacun des éléments en ligne et pas en colonnes!!
        
    end # jai tricher ici!! bouuuuh!!!
    

    def self.all
        @@event # ont "return" les différentes donnée pour les transmettre avec un accèe (attr_accessor) au tableaux event.
    end

end

@start_date    Time     Time.parse("2010-10-31 12:00")

@duration       integer Event.new("2019-01-06 14:00", 30)

@title          string Event.new("2019-01-13 09:00", 10, "standup quotidien")

@attendees      array Event.new("2019-01-13 09:00", 10, "standup quotidien", ["truc@machin.com", "bidule@chose.fr"])

mailto:adressebidon@exemple.com