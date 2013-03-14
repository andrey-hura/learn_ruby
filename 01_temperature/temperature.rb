
DIF = 32
REL = 5.0/9.0

def ftoc(fah)
  (fah-DIF)*REL
end

def ctof(cel)
  cel/REL+DIF
end
