require_relative 'assign'
class Programdetails
  def event_details
    events =[]
    file = File.open('program').read
    file.each_line do |line|
      events.push(line.chomp)
    end
    time_program_list(events)
  end

                         
  def time_program_list(events)
    events_list =Hash.new
    events.each do |each_program| 
      events_list[each_program.tr("0-9",'')] = each_program.tr("^0-9", '')
    end
    #puts events_list
    Assign.new(events_list).events
  end
end

event = Programdetails.new
event.event_details
