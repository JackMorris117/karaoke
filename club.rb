class Club
    attr_reader :name, :songs, :guests


    def initialize(name, songs = [], guests = [])
        @name = name
        @songs = songs
        @guests = guests
    end

    def who_is_in_room
        return @guests

    end
 
    def add_song_to_room(song)
       @songs << song
    end
    def add_customer_to_room(guest)
        @guests << guest

    end










end