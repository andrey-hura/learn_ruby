
class XmlDocument

  def initialize(nested=false)
    @nested = nested
    @nest = ''
    @newline = ""
    if @nested then @newline = "\n" end
  end

  def method_missing(tag,attr={})
    out = ''
    out += "<#{tag}"
    attr.each{|k,v| out += " #{k}='#{v}'" }

    if block_given? then
      out +=">#@newline"
      nest = @nest
      if @nested then @nest += "  " end
      out += @nest + yield
      out += "#{nest}</#{tag}>#@newline"
    else
      out +="/>#@newline"
    end

    out

  end
end

