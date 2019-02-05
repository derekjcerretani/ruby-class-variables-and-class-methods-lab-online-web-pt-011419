class Song

  attr_accessor :name, :artist, :genre

  @@count = 0
  @@artists = []
  GENRE_COUNT = []

  def initialize(name, artist, genre)
    @name = name
    @artist = artist
    @genre = genre
    @@count += 1
    @@artists << @artist
  end

  def self.count
    @@count
  end

  def self.artists
    @@artists
  end

  def self.genre_count
    GENRE_COUNT << @genre unless GENRE_COUNT.include?(@genre)
  end

end
