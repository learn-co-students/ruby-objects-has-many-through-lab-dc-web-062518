class Genre
  # has many songs
  # has many artists through songs

  attr_accessor :songs, :artists
  attr_reader :name

  def initialize(name)
    @name = name
    @songs = []
    @artists = []
  end

  def artists
    self.songs.map {|song| song.artist}.uniq
  end

end
