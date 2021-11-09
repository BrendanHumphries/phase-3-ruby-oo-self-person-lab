class Person
    attr_reader :name, :happiness, :hygiene
    attr_accessor :bank_account
    
    def initialize(name)
        @name = name
        @bank_account = 25
        @happiness = 8
        @hygiene = 8
    end

    def happiness=(value)
        if value > 10
            @happiness = 10
        elsif value >= 0
            @happiness = value
        elsif value < 0
            @happiness = 0
        end
    end

    def hygiene=(value)
        if value > 10
            @hygiene = 10
        elsif value >= 0
            @hygiene = value
        elsif value < 0
            @hygiene = 0
        end
    end

    def clean?
        if @hygiene > 7
            true
        else
            false
        end
    end

    def happy?
        if self.happiness > 7
            true
        else
            false
        end
    end

    def get_paid(amount)
        self.bank_account += amount
        'all about the benjamins'
    end

    def take_bath
        self.hygiene=(4 + @hygiene)
        '♪ Rub-a-dub just relaxing in the tub ♫'
    end

    def work_out
        self.happiness=(2 + @happiness)
        self.hygiene=(-3 + @hygiene)
        '♪ another one bites the dust ♫'
    end

    def call_friend friend
        self.happiness=(3 + @happiness)
        friend.happiness=(3 + friend.happiness)
        "Hi #{friend.name}! It's #{self.name}. How are you?"
    end

    def start_conversation friend, topic
        if topic == 'politics'
            self.happiness=(-2 + @happiness)
            friend.happiness=(-2 + friend.happiness)
            'blah blah partisan blah lobbyist'
        elsif topic == 'weather'
            self.happiness=(1 + @happiness)
            friend.happiness=(1 + friend.happiness)
            'blah blah sun blah rain'
        else
            'blah blah blah blah blah'
        end
    end
end