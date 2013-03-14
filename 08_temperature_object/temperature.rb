
class Temperature

  DIF = 32
  REL = 5.0/9.0

  def initialize(temp={:c=>0})
    if temp.key?(:f) then
      @fah = temp[:f]
      @cel = self.ftoc(temp[:f])
    else
      @cel = temp[:c]
      @fah = self.ctof(temp[:c])
    end
  end

  def ftoc(fah)
    (fah-DIF)*REL
  end

  def ctof(cel)
     cel/REL+DIF
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
