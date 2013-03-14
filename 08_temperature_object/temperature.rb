
class Temperature

  def initialize(temp={:c=>0})
    if temp.key?(:f) then
      @fah = temp[:f]
      @cel = self.ftoc(temp[:f])
    else
      @cel = temp[:c]
      @fah = self.ctof(temp[:c])
    end
  end

  def ftoc(far)
    (far-32)*5.0/9.0
  end

  def ctof(cel)
    cel*9.0/5.0+32
  end

  def in_fahrenheit() @fah end

  def in_celsius() @cel end

  def self.from_celsius(temp)
    self.new(:c => temp)
  end

  def self.from_fahrenheit(temp)
    self.new(:f => temp)
  end

end

class Celsius < Temperature
  def initialize(temp)
    super({:c => temp})
  end
end

class Fahrenheit < Temperature
  def initialize(temp)
    super({:f => temp})
  end
end
