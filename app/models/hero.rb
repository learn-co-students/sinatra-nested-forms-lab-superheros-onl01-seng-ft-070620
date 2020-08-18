class Hero
    attr_accessor :name, :power, :bio

    def initialize(attrs)
        @name = attrs[:name]
        @power = attrs[:power]
        @bio = attrs[:bio]
    end
end