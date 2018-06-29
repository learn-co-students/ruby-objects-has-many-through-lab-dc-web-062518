require 'pry'

class Genre

  attr_reader :name

  @@all = []

  def self.all
    @@all
  end

  def initialize(name)
    @name = name
    self.class.all << self
  end

  def new_song(name, artist)
    Song.new(name, artist, self)
  end

  def songs
    Song.all.select{ |song| song.genre == self }
  end

  def artists
    songs.map{ |song| song.artist}
  end

end

# binding.pry
puts "hello"
