class Time_calculator
  def initialize time
    @time=time
  end
  def cur_time
    hours = @time/3600.to_i
    minutes = (@time/60 - hours * 60).to_i
    seconds = (@time - (minutes * 60 + hours * 3600)).to_i
    "#{hours}:#{minutes}:#{seconds}"
  end
  
end
