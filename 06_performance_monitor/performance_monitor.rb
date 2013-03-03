
def measure(b=1)
  a = Time.now
  b.times { yield }
  b > 1 ? (Time.now - a)/b : Time.now - a
end
