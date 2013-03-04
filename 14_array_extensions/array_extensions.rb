
class Array
  def sum
    sum = 0
    self.each {|x| sum +=x}
    sum
  end

  def square
    self.map {|x| x**2}
  end

  def square!
    self.map! {|x| x**2}
  end

end
