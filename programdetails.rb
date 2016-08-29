class Programdetails
  def details
    events =[]
    puts "enter the events name along with its duration and type 'end' when all the events are given"
    while (value =gets.chomp) != 'end'
      events.push(value)
    end
    puts events.class
    puts events
    time_for_each_event(events)
  end
  
  def time_for_each_event(events)
    events_list =Hash.new
    events.each do |each_program| 
      events_list[each_program.tr("0-9",'')] = each_program.tr("^0-9", '')
    end
  end
end

event = Programdetails.new
event.details
