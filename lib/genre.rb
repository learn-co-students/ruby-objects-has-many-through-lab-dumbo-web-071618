 class Genre
 attr_accessor :name, :songs, :artists
    @@all = []

 def initialize(name)
 @name = name 
 @songs = []
 @artists = artists
 @@all << self


 end 

 def songs
 Song.all.select do |ele|
    #puts "this is the ele: #{ele}" 
   ele.genre == self
 end 
 
end


def  self.all
    @@all
end 


    def new_song(name,artist)
        song = Song.new(name,artist,self)
        song.genre = self 
        @songs << song 
        song

    end 


 def artists
 self.songs.collect do |ele|
 ele.artist
 end 

 end 


 
end 
 

