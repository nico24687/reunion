require 'pry'
require 'erb'
require './lib/activity'

class Reunion
  attr_reader :location, :activities
  def initialize(location)
    @location = location
    @activities = []
  end

  def add_activity(activity)
    @activities << activity
  end

  def total_cost
    @activities.map do |activity|
      activity.total_cost
    end.sum
  end 

  def breakout 
    total_owed = @activities.map do |activity|
      activity.owe
    end

    breakout = {}
    total_owed.each do |current_owed|
      breakout.merge!(current_owed) do |key, old_value, new_value|
        breakout[key] = old_value + new_value
      end
    end

    breakout
  end

  def write_breakout
    p "Nico debt 10 Lorenzo credit 10"
  end 
end


reunion = Reunion.new("London")
hiking = Activity.new("hiking")
# drinks = Activity.new("drinks")
reunion.add_activity(hiking)
hiking.add_participant("Nico",10)
hiking.add_participant("Lorenzo",20)
@activities = [hiking]

template_letter = File.read("form_letter.erb")
filename = "example.html"
erb_template= ERB.new template_letter
html = erb_template.result(binding)
File.write(filename,html)



