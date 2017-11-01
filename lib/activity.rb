class Activity
  attr_reader :name, :participants
  def initialize(name)
    @name = name
    @participants = {}
  end

  def add_participant(name,value)
    participants[name] = value
  end
end
