# your code goes here
require 'pry'

class Person

    attr_accessor:bank_account, :happiness, :hygiene
    attr_reader:name

    def initialize (name,bank_account=25,happiness=8,hygiene=8)
        @name = name
        @bank_account =bank_account
        @happiness=happiness

        @hygiene=hygiene
    end

    def hygiene
        @hygiene.clamp(0,10)
    end

    def happiness
        @happiness.clamp(0,10)
    end


    def clean?
        if @hygiene > 7
          true
        else
          false
        end
    end

    def happy?

        if @happiness > 7
          true
        else
          false
        end
    end

    def get_paid(salary)
        @bank_account+=salary
        return "all about the benjamins"
    end
    def take_bath

        self.hygiene+=4
        return "♪ Rub-a-dub just relaxing in the tub ♫"

    end
    def work_out

      self.hygiene -=3
      self.happiness+=2
        return "♪ another one bites the dust ♫"
    end


    def call_friend
    end
    def start_conversation(person, topic)
    end
end
