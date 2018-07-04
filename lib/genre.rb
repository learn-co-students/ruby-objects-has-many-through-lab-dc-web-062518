require 'pry'
class Genre
  attr_accessor :name,:artists
  attr_reader :songs
  def initialize(name)
    @name = name
    @songs = []
  end

  def songs
    @songs = Song.all.select{|song| song.genre = self}
    # binding.pry
  end

  def artists
    @artists = songs.map { |s| s.artist }
  end
end
