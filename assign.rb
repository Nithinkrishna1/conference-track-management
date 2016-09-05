require_relative 'time_calculator'
require_relative 'sum'
class Assign
  def initialize(events_list)
    @events_list = events_list
  end
  
  def events
    decision_parameter= session_separating_value.to_i
    remaining_time =session_separating_value - session_separating_value.to_i
    if decision_parameter >= 1
      while decision_parameter>0
        
        puts ""
        puts "Day: #{decision_parameter}"
        new_events_list=Approximation.new(@events_list, 180, 9*3600).value
        p "12:0:0: Lunch"
        second =Approximation.new(new_events_list, 240, 13*3600).value
        p "17:0:0: Networking Event"
        puts ""
        decision_parameter-= 1
        if decision_parameter >=1
          @events_list =second
        end
      end
    end
    if (remaining_time * 420) >=180
      Approximation.new(second, 180, 9*3600).value
      p "12:0:0: Lunch"
    end

    #if (remaining_time *420) < 180
      
    #end
    
  end

  def session_separating_value
    total_time = Time_calculator.new(0, @events_list).total_time_in_day
    total_event_time=0
    time_before_noon =180
    time_after_noon = 240
    total_time/(time_before_noon + time_after_noon).to_f
    
  
  end
end
