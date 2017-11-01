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
    activity = Activity.new("hiking")
  
    assert_equal({}, activity.participants)
  end

  def test_activity_can_add_participant 
    activity = Activity.new("hiking")
    activity.add_participant("Nico", 10)

    assert_equal({"Nico" => 10}, activity.participants)
  end 

  def test_can_add_multiple_participants_to_activity
    activity = Activity.new("hiking")
    activity.add_participant("Nico", 10)
    activity.add_participant("Lorenzo", 20)
    
    assert_equal 2, activity.participants.count
  end 

  def test_can_evaluate_total_cost_of_activity
    activity = Activity.new("hiking")
    activity.add_participant("Nico", 10)
    activity.add_participant("Lorenzo", 20)
    
    assert_equal 30, activity.total_cost
  end 



end
