
class Fixnum
  def in_words
    @wordlib = { 1=>"one", 2=>"two", 3=>"three", 4=>"four",
                5=>"five",6=>"six", 7=>"seven", 8=>"eight",
                9=>"nine",10=>"ten",11=>"eleven",12=>"twelve",
                13=>"thirteen",14=>"fourteen",15=>"fifteen",
                16=>"sixteen",17=>"seventeen",18=>"eighteen",
                19=>"nineteen",20=>"twenty",30=>"thirty",
                40=>"forty",50=>"fifty",60=>"sixty",70=>"seventy",
                80=>"eighty",90=>"ninety"
              }

    @rate = { 1_000_000_000_000=>"trillion",
              1_000_000_000=>"billion",
              1_000_000=>"million",
              1_000=>"thousand" 
            }

    return "zero" if self == 0
    out = []
    dig = self

    @rate.each{ |rate,name|
      rate_dig = dig/rate
      out << self.parse_hundreds(rate_dig)+" "+name if rate_dig > 0
      dig = dig%rate
    }
    out << self.parse_hundreds(dig) if dig > 0
    out.join(" ")
  end

  def parse_hundreds(dig)
    out = []
    hun = dig/100
    out << @wordlib[hun]+" hundred" if hun > 0
    dig = dig%100
    if dig > 20 then
        ten = dig/10
        out << @wordlib[ten*10]
        out << @wordlib[dig%10] if dig%10 > 0
    else
      out << @wordlib[dig] if dig > 0
    end
    out.join(" ")
  end

end
