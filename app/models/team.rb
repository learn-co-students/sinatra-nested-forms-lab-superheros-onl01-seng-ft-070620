class Team
    attr_accessor :name, :motto
    @@all = []
  
    def initialize(params)
      @motto = params[:motto]
      @name = params[:name]
      @@all << self
    end
  
    def self.all
      @@all
    end
  
end