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

        @room1 = Club.new("Room 1", [@song1, @song2], [])
        @room2 = Club.new("Room 2", [@song3, @song4], ["Robyn", "Georgia", "Danny"])
        @room3 = Club.new("Room 3", [@song5, @song6], [])

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


















end