
class Friend

#  def greeting(*a)
#    if a.size>0 then b=", #{a[0]}" end
#    "Hello#{b}!"
#  end

  def greeting(a='')
    a = ", "+a if a !=''
    "Hello#{a}!"
  end
  
end
