class Song

    @@count = 0
    @@genre = []
    @@artist = []

attr_accessor :name, :artist, :genre
def initialize(name,artist,genre)
    @name = name
    @artist = artist
    @genre = genre
    @@artist << @artist
    @@genre << @genre
    @@count +=1

end

    def self.count
        @@count
    end

    def self.genre
    @@genre
    end

    def self.artist
        @@artist
    end

    def self.genre_count
        @@genre.tally
    end

    def self.artist_count
        @@artist.tally
    end

end

song = Song.new("i dont wanna know","The Weekend", "pop")

puts song.genre_count



