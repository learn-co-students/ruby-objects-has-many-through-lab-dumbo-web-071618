class Artist
  attr_reader :name
  attr_accessor :song, :genre

  @@all = []

  def initialize(name)
    @name = name
    @@all << self
  end

  def self.all
    @@all
  end

  def songs
    Song.all.select { |song|
    song.artist == self}
  end

  def genres
    songs.map { |song| song.genre}
  end

  def new_song(name, genre)
    song = Song.new(name, self, genre)
  end
end
