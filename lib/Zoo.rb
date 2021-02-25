require 'pry'


class Zoo

@@all = []

attr_reader :name, :location  

    def initialize(name, location)
        @location = location
        @name = name
        @@all << self    
    end

    def self.location
        @location
    end

    def self.name
        @name
    end

    def self.all
        @@all
    end

    def animals
        Animals.all.select{|animal| animal.zoo == self}
    end
end

