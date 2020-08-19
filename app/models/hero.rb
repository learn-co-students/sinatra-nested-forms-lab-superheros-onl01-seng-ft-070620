class Hero
    attr_accessor :name, :power, :bio

    @@heroes = []

    def initialize(params)
        @name = params[:name]
        @power = params[:power]
        @bio = params[:bio]
        @@heroes << self
    end

    def self.all
        @@heroes
    end

    def self.clear
        self.all.clear
    end
end