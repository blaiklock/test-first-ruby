class Timer
  def initialize()
    @seconds = 0
  end

  def seconds
    @seconds
  end

  def seconds=(seconds)
    @seconds = seconds
  end

  def time_string()
    hours = (@seconds / 3_600).floor
    minutes = ((@seconds - (hours * 3_600)) / 60).floor
    seconds = (@seconds - (hours * 3_600) - (minutes * 60)).floor
    hours = "00" + hours.to_s
    hours = hours[-2,2]
    minutes = "00" + minutes.to_s
    minutes = minutes[-2,2]
    seconds = "00" + seconds.to_s
    seconds = seconds[-2,2]
    return "#{hours}:#{minutes}:#{seconds}" 
  end
end

timer = Timer.new
timer.seconds = 12 
puts timer.time_string
