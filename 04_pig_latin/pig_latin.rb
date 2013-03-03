
def translate(a)
  a.gsub!(/\b[aeiouy]\w+/i,'\0ay')
  a.gsub!(/\b(qu)(\w+)/i,'\2\1ay')
  a.gsub!(/\b(sch)(\w+)/i,'\2\1ay')
  a.gsub!(/\b([^aeiouy\s]+)(\w+)/i,'\2\1ay')
  a.gsub(/\b\w+/){|x| if x[/[A-Z]/] then x.capitalize else x end }
end

