require 'minitest'
require 'minitest/test'
require 'minitest/autorun'
require './lib/reunion'
require './lib/activity'
require 'pry'

class ReunionTest < Minitest::Test
  def test_reunion_has_location 
    reunion = Reunion.new("London")

    assert_equal "London", reunion.location
  end

  def test_reunion_has_no_activities_by_default
    reunion = Reunion.new("London")

    assert_equal [], reunion.activities
  end

  def test_can_add_activities_to_a_reunion
    reunion = Reunion.new("London")
    hiking = Activity.new("hiking")

    reunion.add_activity(hiking)
    assert_equal [hiking], reunion.activities
  end
end
