# Cats have cat-only-activites as well. We would define these as instance methods. Some things ONLY cats do are:

#     -bathe (licking themselves)
#     -scratch_post

class Cat < Animal #Cat is a subclass of Animal. Animal == superclass

    #def initialize not needed remember this initializes using Animal (superclass)'s initialize function

    # attr_accessor :name is not needed because it is present in Animal's methods


    extend PetActivities::ClassMethods #allows access to the ClassMethods module INSIDE of PetActivities
    include PetActivities::InstanceMethods
    include PetActivities::InstanceMethods::DayActivities #ASK CHETT if PetActivities::InstanceMethods would do the same thing
    include PetActivities::InstanceMethods::NightActivites #ASK CHETT

    def bathe
        "#{self.name} cleaned themself."
    end

    def scratch_post
        "#{self.name} is scratching the post like crazy!"
    end

end