require 'pry'

class Artist 
	attr_reader :name, :songs 
	# attr_accessor :songs
	@@all = []
	def initialize name
		@name=name
		@@all << self

		# @songs = []
	end

	def self.all 
		@@all
	end

	def new_song name,genre
		song = Song.new(name,self,genre)
		# @songs << song
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
