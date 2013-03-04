
class Dictionary
  def initialize
    @lib = {}
  end
  def entries
    @lib
  end
  def keywords
    @lib.keys.sort
  end
  def add(a={})
    a = {a => nil} if a.is_a? String
    a.each {|key,val| @lib[key] = val }
  end
  def include?(a)
    @lib.key?(a)
  end
  def find(a)
#    res = self.include?(a) ? {a => @lib[a]} : {}
    res = {}
    @lib.each {|key,val| res[key]=val if key[/^#{a}/]}
    res
  end
  def printable
    res = ''
    @lib.sort.each {|key,val| res += %Q([#{key}] "#{val}"\n) }
    res[0..res.length-2] # ? :) why doesn't printable output end whith \n
  end
end
