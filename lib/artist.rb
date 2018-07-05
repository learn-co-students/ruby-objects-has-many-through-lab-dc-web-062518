require 'pry'

class Artist

  @@all = []

  def self.all
    @@all
  end

  attr_accessor :name, :song, :genre

  def initialize(name)
    @name = name
    @@all << self
  end

  #takes in an argument of a name and genre creates a new song.
  #That song should know that it belongs to the artist
  def new_song(name, genre)
    #binding.pry
    Song.new(name, self, genre)
    #new_song.artist
  end

  #that iterates through all songs and finds the songs that belong to that artist.
  #Try using select to achieve this.
  def songs
    Song.all.select do |song|
      song.artist == self
    end
  end
#binding.pry
  #that iterates over that artist's songs and collects the genre of each song
  def genres
    songs.map do |song|
      song.genre
    end
  end

end
