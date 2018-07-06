class Song

  @@all = []

  attr_accessor :artist
  attr_reader :name, :genre

  def initialize(name, artist, genre)
    @name = name
    @artist = artist
    @genre = genre
    @@all << self
  end

  def self.all
    @@all
  end

end

something = Song.new("Something", "Jay-Z2", "Pop2")
