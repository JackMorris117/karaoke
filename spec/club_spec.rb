require('minitest/autorun')
require('minitest/reporters')
Minitest::Reporters.use! Minitest::Reporters::SpecReporter.new

require_relative('../club.rb')
require_relative('../guest.rb')
require_relative('../song.rb')




class TestClub < Minitest::Test
    def setup
        @song1 = Song.new("We are the champions")
        @song2 = Song.new("Carry on my wayward son")
        @song3 = Song.new("Don't stop believing")
        @song4 = Song.new("Wonderwall")
        @song5 = Song.new("Never gonna give you up")
        @song6 = Song.new("Sweet Caroline")

        @guest1 = Guest.new("Garry")
        @guest2 = Guest.new("John")
        @guest3 = Guest.new("Michael")
        @guest4 = Guest.new("Jack")

        @party1 = [@guest1, @guest2, @guest3, @guest4]
        @album = [@song1, @song2, @song3, @song4]

        @room1 = Club.new("Discotown", "Room 1", [@song1, @song2], [])
        @room2 = Club.new("Discotown", "Room 2", [@song3, @song4], ["Robyn", "Georgia", "Danny"])
        @room3 = Club.new("Discotown", "Room 3", [@song5, @song6], [])
        @room4 = Club.new("Discotown", "Room 4", [],[])

    end
    def test_can_get_club_name
        assert_equal("Discotown", @room1.club_name)

    end
  
    def test_can_get_room_number
        assert_equal("Room 1", @room1.room_name)

    end
    def test_can_get_array_of_songs
        assert_equal([@song1, @song2], @room1.songs)

    end
     
    def test_has_right_amout_of_songs
    assert_equal(2, @room2.songs.count)
    end
    def test_amount_in_room__empty
        assert_equal(0, @room1.karaoke_room.count)
    end
    def test_amount_in_room__occupied
        assert_equal(3, @room2.karaoke_room.count)
    end
    def test_get_names_of_guests
        assert_equal(["Robyn", "Georgia", "Danny"], @room2.karaoke_room)

    end
    def test_who_is_in_room
        all_karaoke_room_in_room = @room2.who_is_in_room
        assert_equal(["Robyn", "Georgia", "Danny"], @room2.karaoke_room)

    end
    def test_can_make_new_rooms
        @test_room = Club.new("Discotown", "Test Room", [@song1], [@guest1])
        assert_equal("Test Room", @test_room.room_name)

    end
    def test_add_song_to_room
        @room4.add_song_to_room(@song1)
        assert_equal([@song1], @room4.songs )
    end
    def test_add_song_to_room__multiple
        @room4.add_song_to_room(@album)
        assert_equal([@album], @room4.songs )
    end
    def test_add_customer_to_room
        @room4.add_customer_to_room(@guest1)
        assert_equal([@guest1], @room4.karaoke_room )
    end
    def test_add_customer_to_room__multiple
        @room4.add_customer_to_room(@party)
        assert_equal([@party], @room4.karaoke_room )
    end
    def test_remove_customer_from_room
        @room2.remove_customer("Robyn")
        assert_equal(["Georgia", "Danny"], @room2.karaoke_room)
    end
    def test_add_remove_customer_from_room__multiple
        @room1.add_customer_to_room(@party)
        assert_equal([@party], @room1.karaoke_room)
        @room1.remove_customer(@party)
        assert_equal([], @room1.karaoke_room)

    end

















end