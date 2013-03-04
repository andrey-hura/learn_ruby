
class RPNCalculator

  def initialize
    @stack = []
  end

  def op
    a,b = @stack.pop, @stack.pop
    if (a.is_a? Numeric) && (b.is_a? Numeric) then
      return [a,b]
    else
      raise 'calculator is empty'
    end
  end

  def tokens(str)
    a = str.split
    tokens = []
    a.each do |x|
      case x
        when /\d+/
          tokens.push(x.to_i)
        when /\d+\.\d+/
          tokens.push(x.to_f)
        when /[\+\-\*\/]/
          tokens.push(:"#{x}")
      end
    end
    tokens
  end

  def evaluate(str)
    self.tokens(str).each do |x|
      if x.is_a? Numeric then
        self.push(x)
      else
        case x
          when :+
            self.plus
          when :-
            self.minus
          when :*
            self.times
          when :/
            self.divide
          end
      end
    end
    self.value
  end

  def push(a)
    @stack.push(a)
  end

  def plus
    aop = self.op
    @stack.push(aop[0] + aop[1])
  end

  def minus
    aop = self.op
    @stack.push(aop[0] - aop[1])
  end

  def times
    aop = self.op
    @stack.push(aop[0] * aop[1])
  end

  def divide
    aop = self.op
    @stack.push(aop[0].to_f / aop[1].to_f)
  end

  def value
    @stack[@stack.length-1]
  end

end
