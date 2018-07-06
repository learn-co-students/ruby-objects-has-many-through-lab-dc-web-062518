require 'pry'
class Genre

  @@all = []

  attr_reader :name

  def initialize(name)
    @name = name
    # @songs = []
    @@all << self
  end

  def self.all
    @@all
  end

  def songs
    # binding.pry
    Song.all.find_all do |song|
      song.genre == self
    end
  end

  def artists
    self.songs.map { |song| song.artist }.uniq
  end
# binding.pry
end



pop = Genre.new("Pop")
jz = Artist.new("Jay-Z")
something = Song.new("Something", "Jay-Z2", "Pop2")
