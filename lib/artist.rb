require 'pry'
require_relative 'song.rb'

class Artist

  attr_accessor :name

  @@all = []

  def initialize (name)
    @name = name
    @@all << self
  end

  def self.all
    @@all
  end

  def songs
    Song.all.select do |songs|
      songs.artist == self
    end
  end

  def new_song(name, genre)
    new_song = Song.new(name, self, genre)
    new_song
  end

  def genres
    songs.collect do |genres|
      genres.genre
    end
  end

end
