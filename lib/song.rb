require "pry"
class Song

    attr_reader :name, :artist, :genre
    @@count = 0 
    @@artists = []
    @@genres = []

    def initialize(name, artist, genre)
        @name = name
        @artist = artist
        @genre = genre
        @@count += 1
        @@artists << artist
        ##above is shorthand for @@artist.push
        @@genres << genre
    end

    def self.count  ## using self because we want it to be called on the class
        @@count
    end

    def self.artists
        @@artists.uniq
    end

    def self.genres
        @@genres.uniq       ## PHUN exercise - can you do this without uniq?
    end

    def self.genre_count        ##tally method is easy way here
        genre_hash = {}
        @@genres.each do |t|
    end

    def instance_method     ##how you call instance method

    end

    ##puts genre_hash[:noexist] if you try to access a key that doesn't exixt..
    ## ... ruby will give you nil. nil is a falsy value

end


##new_song = Song.new()         #.new is a class method 

##new_song.my_instance_method

new_song = Song.new("Fly me to the moon","Frank Sinatra", "Big Band" )

binding.pry