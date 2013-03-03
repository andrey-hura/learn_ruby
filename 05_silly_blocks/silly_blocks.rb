
def reverser
  yield.gsub(/\b\w+/){|x| x.reverse}
end

def adder(a=1)
  yield+a
end

def repeater(a=1)
  a.times{yield}
end
