require 'pry'
class Song
  attr_accessor :name,:genre,:artist
  @@all = []
  def initialize(name,artist,genre)
    @name = name
    @artist = artist
    @genre = genre
    # binding.pry
    # genre.songs << self
    @@all << self
  end

  def self.all
    @@all
  end

  # def genre
  #   @genre
  # end

end
