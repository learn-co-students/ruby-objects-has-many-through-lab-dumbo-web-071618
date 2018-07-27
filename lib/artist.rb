class Artist
attr_accessor :name, :genre, :song

@@all = [] #this represents all artist.
  def initialize(name)
    @name = name
    @@all << self #self represents "this" instance of an artist.
  end

  def self.all #this is a class method, self with in this refers to the class.
    @@all
  end

  def new_song(name, genre)
    Song.new(name, self, genre)
  end

  def songs
    Song.all.select do |song|
      song.artist == self
    end
  end

  def genres
    songs.map do |song|
      song.genre
    end
  end












end
