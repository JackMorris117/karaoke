require('minitest/autorun')
require('minitest/reporters')
Minitest::Reporters.use! Minitest::Reporters::SpecReporter.new

require_relative('../club.rb')
require_relative('../guest.rb')
require_relative('../song.rb')




class TestGuest < Minitest::Test
    def setup
        @guest1 = Guest.new("Garry")
        @guest2 = Guest.new("John")
        @guest3 = Guest.new("Michael")
        @guest4 = Guest.new("Jack")

        @room1 = Club.new("Room 1", [@song1, @song2], [])
        @room2 = Club.new("Room 2", [@song3, @song4], ["Robyn", "Georgia", "Danny"])
        @room3 = Club.new("Room 3", [@song5, @song6], [])
        @room4 = Club.new("Room 4", [],[])


    end
    def test_can_get_name
        assert_equal("Garry", @guest1.name)

    end
  














end










