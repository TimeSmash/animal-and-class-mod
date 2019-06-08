class Animal

    attr_reader :name

    def initialize(name)
        @name = name
    end

    def wink
        "#{self.name} winked you. ;)"
    end

end