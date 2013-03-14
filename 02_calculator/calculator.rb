
# You may not have enough knowledge yet to complete `sum`. You will probably
# need to use **loops** (e.g. `while`) or **iterators** (e.g. `each`) to
# get the tests to pass.

def add(oprnd_a,oprnd_b)
  oprnd_a + oprnd_b
end

def subtract(oprnd_a,oprnd_b)
  oprnd_a - oprnd_b
end

def sum(num_array)
  sum = 0
  num_array.each{|num| sum += num }
  sum
end

def multiply(*num_array)
  if num_array.length >= 1 then
    res = 1
    num_array.each{|num| res *= num}
    res
  end
end

def power(oprnd_a,oprnd_b)
  oprnd_a**oprnd_b
end

def factorial(number)
  if number > 0 then number*factorial(number-1) else 1 end
end

