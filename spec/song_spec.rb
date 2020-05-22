require('minitest/autorun')
require('minitest/reporters')
Minitest::Reporters.use! Minitest::Reporters::SpecReporter.new

require_relative('../club.rb')
require_relative('../guest.rb')
require_relative('../song.rb')




class TestSong < Minitest::Test
    def setup
        @song1 = Song.new("We are the champions")
        @song2 = Song.new("Carry on my wayward son")
        @song3 = Song.new("Don't stop believing")
        @song4 = Song.new("Wonderwall")
        @song5 = Song.new("Never gonna give you up")
        @song6 = Song.new("Sweet Caroline")


    end
    def test_can_get_name
        assert_equal("We are the champions", @song1.name)

    end




end