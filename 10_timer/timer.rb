class Timer

  attr_accessor :seconds

  def initialize
    @seconds = 0
  end

  def time_string
    s = @seconds
    "#{p((s/3600)%24)}:#{p((s/60)%60)}:#{p(s%60)}"
  end

  def padded(num)
    num < 10 ? "0#{num}" : num
  end

  alias p padded
end