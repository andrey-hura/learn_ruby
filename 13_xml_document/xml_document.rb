
class XmlDocument

  def initialize(nested=false)
    @nested = nested
    @nest = ''
    @n = ""
    if @nested then @n = "\n" end
  end

  def method_missing(tag,attr={})
    out = ''
    out += "<#{tag}"
    attr.each{|k,v| out += " #{k}='#{v}'" }

    if block_given? then
      out +=">#@n"
      nest = @nest
      if @nested then @nest += "  " end
      out += @nest + yield
      out += "#{nest}</#{tag}>#@n"
    else
      out +="/>#@n"
    end

    out

  end
end

