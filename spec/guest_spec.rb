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
        

    end
    def test_can_get_name
        assert_equal("Garry", @guest1.name)

    end




end






