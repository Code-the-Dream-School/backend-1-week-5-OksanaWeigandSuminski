class Timer
  attr_accessor :seconds
  def seconds
    @seconds = 0
  end
  
  def time_string
    seconds = padded(@seconds % 60)
    minutes = padded((@seconds / 60) % 60)
    hours = padded(@seconds / (60**2))
    "#{hours}:#{minutes}:#{seconds}"
  end

  def padded(num)
    return '0' + num.to_s if num < 10
    return num.to_s if num >= 10
  end
end
