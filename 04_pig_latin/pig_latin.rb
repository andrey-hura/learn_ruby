
def translate(sentence)
  sentence.gsub!(/\b[aeiouy]\w+/i,'\0ay')
  sentence.gsub!(/\b(qu)(\w+)/i,'\2\1ay')
  sentence.gsub!(/\b(sch)(\w+)/i,'\2\1ay')
  sentence.gsub!(/\b([^aeiouy\s]+)(\w+)/i,'\2\1ay')
  sentence.gsub(/\b\w+/){ |word|
    word[/[A-Z]/] ? word.capitalize : word
  }
end

