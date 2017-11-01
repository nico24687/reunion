require 'minitest'
require 'minitest/test'
require 'minitest/autorun'
require './lib/reunion'

class ReunionTest < Minitest::Test
  def test_reunion_has_location 
    reunion = Reunion.new("London")

    assert_equal "London", reunion.location
  end
end
