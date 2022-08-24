
class Song
    attr_accessor :name, :genre, :artist
    @@count = 0
    @@genres = []
    @@artists=[]

    def initialize name, artist, genre
        @name=name
        @artist=artist
        @genre = genre
        @@count += 1
        @@genres<<genre
        @@artists<<artist

    end

    def self.count
        @@count
    end

    def self.genres
        @@genres = @@genres.uniq
    end

    def self.artists
        @@artists = @@artists.uniq
    end

    # use of tally 
    # Tallies the collection, i.e., counts the occurrences of each element. Returns a hash with the elements of the collection as keys and the corresponding counts as values
    def self.genre_count
        @@genres.tally
    end

    def self.artist_count
        @@artists.tally
    end

end