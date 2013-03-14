
class RPNCalculator

  def initialize
    @stack = []
  end

  def op
    oprnd_a,oprnd_b = @stack.pop, @stack.pop
    if (oprnd_a.is_a? Numeric) && (oprnd_b.is_a? Numeric) then
      return [oprnd_a,oprnd_b]
    else
      raise 'calculator is empty'
    end
  end

  def tokens(str)
    tokens = []
    str.split.each do |token|
      case token
        when /\d+/
          tokens.push(token.to_i)
        when /\d+\.\d+/
          tokens.push(token.to_f)
        when /[\+\-\*\/]/
          tokens.push(:"#{token}")
      end
    end
    tokens
  end

  def evaluate(str)
    self.tokens(str).each do |token|
      if token.is_a? Numeric then
        self.push(token)
      else
        case token
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

  def push(number)
    @stack.push(number)
  end

  def plus
    operands = self.op
    @stack.push(operands[0] + operands[1])
  end

  def minus
    operands = self.op
    @stack.push(operands[0] - operands[1])
  end

  def times
    operands = self.op
    @stack.push(operands[0] * operands[1])
  end

  def divide
    operands = self.op
    @stack.push(operands[0].to_f / operands[1].to_f)
  end

  def value
    @stack[@stack.length-1]
  end

end

