require 'pry'
require_relative 'song.rb'

class Genre

  attr_accessor :name

  @@all = []

  def initialize(name)

    @name = name
    @@all << self

  end

  def self.all
    @@all
  end

  def new_song(name, artist)
    new_song = Song.new(name, artist, self)
    new_song
  end

  def songs
    Song.all.select do |songs|
      songs.genre == self
    end
  end

  def artists
    songs.collect do |artists|
      artists.artist
    end
  end

end
