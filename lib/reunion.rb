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
end
