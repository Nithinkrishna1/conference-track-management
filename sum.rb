class Approximation
  def initialize events_list
    @events_list = events_list
  end
  
  def value
    puts @events_list
    new_events_list = @events_list
    required =Hash.new
    eventtime=0
      @events_list.each_with_index do |(event_name, event_time),index|
        unless eventtime ==180 && eventtime >180
          eventtime+=event_time.to_i
          required.merge!({event_name => event_time})
          
          if eventtime >180
            required.delete(event_name)
            eventtime-=event_time.to_i
          end
        end
     
      
    end
      puts "required"
      puts required
      puts "total list"
      puts @events_list
      #puts new_event_list
      puts "diff"
      puts difference(required)
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
