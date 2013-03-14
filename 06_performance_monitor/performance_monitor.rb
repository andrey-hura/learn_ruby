
def measure(count=1)
  time_a = Time.now
  count.times { yield }
  count > 1 ? (Time.now - time_a)/count : Time.now - time_a
end
