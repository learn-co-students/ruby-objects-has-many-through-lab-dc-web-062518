require 'pry'

class Song

  attr_reader :name
  attr_accessor :artist, :genre

  @@all = []

  def self.all
    @@all
  end

  def initialize(name, artist, genre)
    @name = name
    @artist = artist
    @genre = genre
    self.class.all << self
  end

end

# binding.pry
puts "hello"
