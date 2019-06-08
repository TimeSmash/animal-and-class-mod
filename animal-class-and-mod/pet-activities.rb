# Examples of daytime activities would be:
# - going for a walk (in this exercise, imagine walking your cat is an activity)
# - playing
# -looking at birds fly around

# Examples of nighttime activites would be:
# -sleeping
# -dreaming
# (Bonus: if a noise heard, make a ruckus??)

# Examples of activites that occur regardless of the time would be:
# -Bathroom
# -Eating 
# -Drinking

module PetActivities #overall module
    module InstanceMethods #module containg instance methods for either Dog/Cat.new (Fido/Meowth can access these)
        module DayActivities #Activities during day. Remember self refers to the instance here!!! (An instance of class Dog or class Cat)
            def walk
                "You took #{self.name} for a walk!"
            end

            def playing
                "You played with #{self.name} for a while."
            end

            def birdwatch
                "#{self.name} is watching the birds."
            end
        end
    
        module NightActivities
        end

        #non-day or non-night methods go here (methods that don't care about time)
        def bathroom
            if self.class == Dog #If dog_inst/cat_inst 's class is Dog...
                "You took #{self.name} outside to go to the bathroom" 
            else #If dog_inst/cat_inst class is NOT Dog. (This could be extended if you had more than Dog and Cat)
                "#{self.name} used the litterbox."
            end
        end
    end
    
    module ClassMethods #module containg methods for Dog or Cat CLASS
        def type_of_animal
            "#{self.name} is a #{self.superclass.name.downcase}"
        end
    end
    
end