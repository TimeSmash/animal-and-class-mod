<!-- Ex dog1 is an instance of Dog, Dog is a subclass of Animal, and there is a module PetActivites that has a sub-module of DayActivities and NightActivities. Those submodules have their own sets of methods included in them, and PetActivities also contains a couple of its own methods (methods that don’t care what time it is, like eating or bathroom) -->

Real-life scenario:

You are the owner of a dog Hachi and cat Meowth. Dogs and cats are animals. Therefore, a class Dog can be viewed as an subclass of a superclass Animal--the same logic goes for a class Cat. 

Pets have activities they can do during the day, at night, or any time. This will be our Module.
    
    Examples of daytime activities would be:
        - going for a walk (in this exercise, imagine walking your cat is an activity)
        - playing
        -looking at birds fly around

    Examples of nighttime activites would be:
        -sleeping
        -dreaming
        (Bonus: if a noise heard, make a ruckus??)

    Examples of activites that occur regardless of the time would be:
        -Bathroom
        -Eating 
        -Drinking

Dogs have dog-only-activites as well. We would define these as instance methods. Some things ONLY dogs do are:

    -wag_tail
    -roll_over

Cats have cat-only-activites as well. We would define these as instance methods. Some things ONLY cats do are:

    -bathe (licking themselves)
    -scratch_post


In this exercise, we will create both pets, which will have their own unique (instance) methods as well as methods they can borrow from their parent class and also from a module. 

Breakdown of Hachi and inheritance:

                                                                ::DayActivities
                                                              /    
    Hachi     <--include module PetActivities::InstanceMethods -->Methods that aren't time specific
     / \                                                       \
      |                                                         ::NightAcivities    
      |
Instance of Dog.new
     / \
      |
      |
  subclass Dog <--extend module PetActivites::ClassMethods-->A method that says "#{dog_isnt.name} is a #{subclass.name}
     / \
      |
      |
superclass Animal

