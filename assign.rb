require_relative 'time_calculator'
require_relative 'sum'
class Assign
  def initialize(events_list)
    @events_list = events_list
  end
  def events
    new_events_list=Approximation.new(@events_list,180,9*3600).value
    p "12:0:0: Lunch"
    second =Approximation.new(new_events_list,240,13*3600).value
    p "17:0:0: Networking Event"
    third = Approximation.new(second,180,9*3600).value
    p "12:0:0: Lunch"
    Approximation.new(third,240,13*3600).value
    p "17:0:0: Networking Event"
   
  end
end
