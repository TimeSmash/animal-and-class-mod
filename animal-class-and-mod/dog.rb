# Dogs have dog-only-activites as well. We would define these as instance methods. Some things ONLY dogs do are:

#     -wag-tail
#     -roll-over

class Dog < Animal  #Dog is a subclass of Animal. Animal == superclass
    
    #def initialize not needed remember this initializes using Animal's initialize function

    # attr_accessor :name is not needed because it is present in Animal's methods

    extend PetActivities::ClassMethods #allows access to the ClassMethods module INSIDE of PetActivities
    include PetActivities::InstanceMethods
    include PetActivities::InstanceMethods::DayActivities #ASK CHETT if PetActivities::InstanceMethods would do the same thing
    include PetActivities::InstanceMethods::NightActivites #ASK CHETT
    

    def wag_tail
        "#{self.name} is wagging their tail."
    end

    def roll_over
        "#{self.name} is rolling over."
    end

end