require 'pry'
class Artist

  @@all = []

  attr_accessor :name,:genres
  attr_reader :songs
  def initialize (name)
    @name = name
    @songs = []
    @@all << self
  end

  def self.all
    @@all
  end
  def songs
    @songs = Song.all.select{|song| song.artist == self}
  end
  def new_song(name,genre)
     # binding.pry
    Song.new(name,self,genre)
  end

  def genres
    @genres = songs.map { |s| s.genre }
  end

end
