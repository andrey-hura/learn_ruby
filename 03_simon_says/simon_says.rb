
def echo(word) word end

def shout(word) word.upcase end

def repeat(word,times=2)
  res = []
  times.times{ res << word }
  res.join(" ")
end

def start_of_word(word,length) word[0,length] end

def first_word(word) word.split[0] end

def titleize(sentence)
  sentence.gsub!(/(^\S)|(\b\S{4,})/){ |word| word.capitalize }
  sentence.gsub("Over","over") # "over" is exception
end
