
class Dictionary

  attr_reader :entries

  def initialize
    @entries = {}
  end
  def keywords
    @entries.keys.sort
  end
  def add(words={})
    words = {words => nil} if words.is_a? String
    @entries.update(words)
  end
  def include?(word)
    @entries.key?(word)
  end
  def find(word)
    res = {}; @entries.each {|key,val| res[key]=val if key[/^#{word}/] }; res
  end
  def printable
    res = ''
    @entries.sort.each {|key,val| res += %Q([#{key}] "#{val}"\n) }
    res[0..res.length-2]
  end

end
