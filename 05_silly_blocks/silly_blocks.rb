
def reverser
  yield.gsub(/\b\w+/){|sentence| sentence.reverse}
end

def adder(oprnd_a=1)
  yield+oprnd_a
end

def repeater(count=1)
  count.times{yield}
end
