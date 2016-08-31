require_relative 'time_calculator'
require_relative 'indexing'
require_relative 'sum'
class Assign
  def initialize(events_list)
    @events_list = events_list
  end
  def events
<<<<<<< HEAD
    new_events_list=Approximation.new(@events_list,180,9*3600).value
    p "12:0:0: Lunch"
    second =Approximation.new(new_events_list,240,13*3600).value
    p "17:0:0: Networking Event"
    third = Approximation.new(second,180,9*3600).value
    p "12:0:0: Lunch"
    fourth= Approximation.new(third,240,13*3600).value
    p "17:0:0: Networking Event"
   
=======
    prog_time = 0
    Approximation.new(@events_list).value
    #Summation.new().subset_sum
   # before_noon = Hash.new
    
    #time = 9*3600
    #@events_list.each do |event_name, event_time|
     # p "#{Time_calculator.new(time).cur_time}: #{event_name} #{event_time}"
      #time = time + (event_time.to_i)*60
    #end    
>>>>>>> c111321dffe45ba94002e607b75cfb80c3ffa4fb
  end
end
