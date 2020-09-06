require 'pry'

class Artist

    attr_accessor :name

    @@songs = [] #gives access to the songs class array in the Artist clas

    def initialize(name)
        @name = name
        @@songs << self #shovels all new song instances into the songs class
    end

    def self.songs #allows the song class to be worked on in other methods in this class
        @@songs
    end

    def songs #Artist has many songs method
        Song.all.select {|song| song.artist == self}
    end
# binding.pry
    def add_song(song)
        song.artist = self
    end

    def add_song_by_name(name)
        song = Song.new(name)
        song.artist = self
    end

    def self.song_count
        Song.all.count
    end

end





# binding.pry