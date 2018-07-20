class Song
  attr_accessor :genre, :artist, :name
  attr_reader

  @@all = []

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
