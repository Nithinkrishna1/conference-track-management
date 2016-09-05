class Time_calculator
  def initialize time, *events_list
    @time=time
    @events_list = events_list
  end

  
  def cur_time
    hours = @time/3600.to_i
    minutes = (@time/60 - hours * 60).to_i
    seconds = (@time - (minutes * 60 + hours * 3600)).to_i
    "#{hours}:#{minutes}:#{seconds}"
  end
  
  def total_time_in_day
    total_event_time = 0
    (@events_list.reduce Hash.new, :merge).each do |event_name, event_time|
      total_event_time += event_time.to_i
    end
    total_event_time
  end
  
end
