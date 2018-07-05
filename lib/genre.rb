class Genre

  @@all = []

  def self.all
    @@all
  end

  attr_accessor :name, :song, :artist

  def initialize(name)
    @name = name
    @@all << self
  end

  #hat takes in an argument of a name and an artist and creates a new song.
  #That song should know that it belongs to the genre
  def new_song(name, artist)
    Song.new(name, artist, self)
  end

  #that iterates through all songs and finds the songs that belong to that genre
  def songs
    Song.all.select do |song|
      song.genre == self 
    end
  end

  #that iterates over the genre's collection of songs and collects the artist that owns each song
  def artists
    songs.map do |song|
      song.artist
    end
  end

end

# solange = Artist.new("Solange")
# beyonce = Artist.new("Beyonce")
# pop = Genre.new("Pop")
# soul = Genre.new("Soul")
# cranes = Song.new("Cranes", solange, soul)
# hair = Song.new("Dont Touch My Hair", solange, soul)
# bodied = Song.new("Get Me Bodied", beyonce, pop)
#
#
# binding.pry
