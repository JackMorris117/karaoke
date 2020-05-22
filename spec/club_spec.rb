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

        @room1 = Club.new("Room 1", [@song1, @song2], [])
        @room2 = Club.new("Room 2", [@song3, @song4], ["Robyn", "Georgia", "Danny"])
        @room3 = Club.new("Room 3", [@song5, @song6], [])
        @room4 = Club.new("Room 4", [],[])

    end
    def test_can_get_room_number
        assert_equal("Room 1", @room1.name)

    end
    def test_can_get_array_of_songs
        assert_equal([@song1, @song2], @room1.songs)

    end
    def test_has_right_amout_of_songs
    assert_equal(2, @room2.songs.count)
    end
    def test_amount_in_room__empty
        assert_equal(0, @room1.guests.count)
    end
    def test_amount_in_room__occupied
        assert_equal(3, @room2.guests.count)
    end
    def test_get_names_of_guests
        assert_equal(["Robyn", "Georgia", "Danny"], @room2.guests)

    end
    def test_who_is_in_room
        all_guests_in_room = @room2.who_is_in_room
        assert_equal(["Robyn", "Georgia", "Danny"], @room2.guests)

    end
    def test_add_song_to_room
        @room4.add_song_to_room(@song1)
        assert_equal([@song1], @room4.songs )

    end
        def test_add_customer_to_room
        @room4.add_customer_to_room(@guest1)
        assert_equal([@guest1], @room4.guests )


    end



















end