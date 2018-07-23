class Genre

    @@all = []
    attr_reader :name

    def self.all
        @@all
    end

    def new_song(name, artist)
        Song.new(name, artist, self)
    end

    def initialize(name)
        @name = name
        @@all << self
    end

    def songs
        Song.all.select do |song|
            song.genre == self
        end
    end

    def artists
        self.songs.map do |song|
            song.artist
        end
    end

end