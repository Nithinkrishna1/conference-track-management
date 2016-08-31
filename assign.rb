require_relative 'time_calculator'
require_relative 'indexing'
require_relative 'sum'
class Assign
  def initialize(events_list)
    @events_list = events_list
  end
  def events
    prog_time = 0
    Approximation.new(@events_list).value
    #Summation.new().subset_sum
   # before_noon = Hash.new
    
    #time = 9*3600
    #@events_list.each do |event_name, event_time|
     # p "#{Time_calculator.new(time).cur_time}: #{event_name} #{event_time}"
      #time = time + (event_time.to_i)*60
    #end    
  end
end
