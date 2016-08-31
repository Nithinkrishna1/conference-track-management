class Approximation
  def initialize events_list, session, program_time
    @events_list = events_list
    @session =session
    @program_time =program_time
   
  end
  
  def value
    required =Hash.new
    eventtime=0
    @events_list.each_with_index do |(event_name, event_time),index|
        unless eventtime ==@session && eventtime >@session
          eventtime+=event_time.to_i
          required.merge!({event_name => event_time})
          
          if eventtime > @session
            required.delete(event_name)
            eventtime-=event_time.to_i
          end
        end
    end
     
 
    required.each do |event_name, event_time|
      p "#{Time_calculator.new(@program_time).cur_time}: #{event_name} #{event_time}"
      @program_time = @program_time + (event_time.to_i)*60
    end
    return difference(required)
  end

  def difference(required)
    if @events_list.size > required.size
      difference = @events_list.to_a - required.to_a
    else
      difference = required.to_a - @events_list.to_a 
    end
    remaining = Hash[*difference.flatten]
  end
end
