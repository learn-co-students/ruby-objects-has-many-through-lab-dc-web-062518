require 'pry'


class Genre

attr_accessor :name, :artist, :song

@@all = []

def initialize(name)
  @name = name
  @artists = []
  @@all << self
end

def songs
  Song.all.select do |x|
    if self == x.genre
      x
    end
  end
end


def artists
  Song.all.select do |x|
    if self == x.genre
      @artists << x.artist
    end
  end
  @artists
end






















end
