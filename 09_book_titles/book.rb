
class Book

 def title=(t)
   @title = t
   @title.gsub!(/(\S{3,})/){ |x| x.capitalize }
   except = Regexp.union("And", "The", "Over", "Since",
                         "With", "About", "Under", "Behind",
                         "Opposite", "Beside", "Down", "Along", 
                         "Past", "Through", "Into", "From",
                         "Until", "Till", "During", "Before",
                         "After", "Since", "Inside", "Outside"
                         )

   @title.gsub!(except){ |x| x.downcase }
   @title.gsub!(/(^\S)|(\bi\b)/){ |x| x.capitalize }
 end

 def title
   @title
 end

end
