class Song
    attr_accessor :name, :artist, :genre
    @@count = 0
    @@genres = []
    @@artists = []
    @@genre_count = {}
    @@artist_count = {}

    def initialize (name, artist, genre)
        @name= name
        @artist= artist
        @genre= genre
        @@name= name
        @@count += 1
        @@genres << genre
        @@artists << artist
    end

    def self.count
        @@count
    end

    def self.artists
        return @@artists.uniq
    end

    def self.genres
        return @@genres.uniq
    end

    def self.genre_count
        @@genres.group_by(&:itself).each {|key, value| @@genre_count[key] = value.count}
        return @@genre_count
    end

    def self.artist_count
        @@artists.group_by(&:itself).each {|key, value| @@artist_count[key] = value.count}
        return @@artist_count
    end
end
