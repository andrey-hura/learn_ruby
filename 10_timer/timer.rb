class Timer
  def initialize
    @seconds = 0
  end
  def seconds
    @seconds
  end
  def seconds=(s)
    @seconds = s
  end
  def time_string
    s = @seconds
    "#{p((s/3600)%24)}:#{p((s/60)%60)}:#{p(s%60)}"
  end
  
  def padded(d)
    d.to_s.size == 1 ? "0#{d}" : d
  end
  
  alias p padded
end