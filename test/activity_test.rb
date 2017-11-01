require 'minitest'
require 'minitest/autorun'
require 'minitest/pride'
require './lib/activity'
require 'pry'

class ActivityTest < Minitest::Test

  def test_activity_has_attributes
    activity = Activity.new("hiking")

    assert_equal "hiking", activity.name
  end 

  def test_activity_has_no_participants_by_default
  end
end
