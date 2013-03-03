
class Temperature

  def initialize(t={:c=>0})
    if t.key?(:f) then
      @f = t[:f]
#      @c = (t[:f].abs-32)*5.0/9.0 # after refactoring
      @c = self.ftoc(t[:f])
    else
      @c = t[:c]
#      @f = t[:c].abs*9.0/5.0+32 # after refactoring
      @f = self.ctof(t[:c])
    end
  end

  def ftoc(f) # after refactoring
    (f.abs-32)*5.0/9.0
  end

  def ctof(c) # after refactoring
    c.abs*9.0/5.0+32
  end

  def in_fahrenheit
    @f
  end

  def in_celsius
    @c
  end

  def self.from_celsius(t)
    self.new(:c => t)
  end

  def self.from_fahrenheit(t)
    self.new(:f => t)
  end

end

class Celsius < Temperature
  def initialize(t)
    super({:c => t})
  end
end

class Fahrenheit < Temperature
  def initialize(t)
    super({:f => t})
  end
end

