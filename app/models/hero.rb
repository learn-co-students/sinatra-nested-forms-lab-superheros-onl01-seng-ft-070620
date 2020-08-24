class Hero

    attr_accessor :name, :power, :bio, :team

    def initialize(name, power, bio, team)
        self.name = name
        self.power = power
        self.bio = bio
        self.team = team
    end

end