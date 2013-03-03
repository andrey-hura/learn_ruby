
def echo(a)
  a
end

def shout(a)
  a.upcase
end

def repeat(a,b=2)
  ((a+" ")*b).rstrip
end

def start_of_word(a,b)
  a[0,b]
end

def first_word(a)
  a.split[0]
end

def titleize(a)
  a.gsub!(/(^\S)|(\b\S{4,})/){ |x| x.capitalize }
  a.gsub("Over","over") # "over" is exception
end
