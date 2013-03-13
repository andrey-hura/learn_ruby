
def add(a,b)
  a+b
end

def subtract(a,b)
  a-b
end

def sum(a)
  sum = 0
  a.each{|e| sum += e }
  sum
end

def multiply(*a)
  if a.length >= 1 then
    res = 1
    a.each{|e| res *= e}
    res
  end
end

def power(a,b)
  a**b
end

def factorial(a)
#  f = 1
#  a.times{|x| f *= x+1}
#  f

if a > 0 then a*factorial(a-1) else 1 end

end

