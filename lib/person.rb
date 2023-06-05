class Person 
    attr_accessor :bank_account
    attr_reader :name, :happiness, :hygiene


    def initialize(name )
        @name = name
        @bank_account = 25
        @happiness = 8
        @hygiene = 8
    end

   def happiness=(val)
        if val > 10
           @happiness = 10
        elsif val < 0
            @happiness = 0
        else
            @happiness = val
        end
   end

   def hygiene=(val)
        if val > 10
            @hygiene = 10
        elsif val < 0
            @hygiene = 0
        else
            @hygiene = val
         end
    end

    def clean?
        self.hygiene > 7
    end

    def happy?
        self.happiness > 7
    end

    def get_paid(amount)
        self.bank_account += amount
        "all about the benjamins"
    end

    def take_bath
        self.hygiene += 4
        "♪ Rub-a-dub just relaxing in the tub ♫"
    end

    def work_out 
        self.hygiene -= 3
        self.happiness  += 2
        "♪ another one bites the dust ♫"
    end

    def call_friend(person_instance)
        self.happiness += 3
        person_instance.happiness += 3
        "Hi #{person_instance.name}! It's #{self.name}. How are you?"
    end

    def start_conversation(friend, topic)
        if topic == "politics"
            self.happiness  -= 2
            friend.happiness -= 2
            "blah blah partisan blah lobbyist"
        elsif topic == "weather"
            self.happiness += 1
            friend.happiness += 1
            "blah blah sun blah rain"
        else
            "blah blah blah blah blah"
        end
    end

end

brian = Person.new("Brian") 
puts brian.take_bath 
puts brian.hygiene
puts brian.clean?