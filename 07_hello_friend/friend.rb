
class Friend
  def greeting(*a)
    if a.size>0 then b=", #{a[0]}" end
    "Hello#{b}!"
  end
end
