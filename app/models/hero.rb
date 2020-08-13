class Hero

    attr_accessor :name, :power, :biography

    @@heroes = []

    def initialize(args)
        @name = args[:name]
        @power = args[:power]
        @biography = args[:biography]
        @@heroes << self
    end

    def self.all
        @@heroes
    end 

end 