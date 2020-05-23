class Club
    attr_reader :club_name, :room_name, :songs, :karaoke_room


    def initialize(club_name, room_name, songs = [], karaoke_room = [])
        @club_name = club_name
        @room_name = room_name
        @songs = songs
        @karaoke_room = karaoke_room
    end

    def who_is_in_room
        return @karaoke_room

    end
 
    def add_song_to_room(song)
       @songs << song
    end
    def add_customer_to_room(guest)
        @karaoke_room << guest

    end
    def remove_customer(guest)
        @karaoke_room.delete(guest)
    end
     











end