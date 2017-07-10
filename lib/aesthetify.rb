=begin
  The basic premise is we shift characters into the Fullwidth and Halfwidth
  Unicode character space using simple arithmetic and a 0x0020 (32) character
  offset since the ASCII characters with fullwidth replacements only begin
  showing up at 0x0021 in Unicode (0x0020 is the space character).
=end

class String
  def aesthetify
    output = []
    self.split("").each do |letter|
      # We skip lowercase letters so we can turn them uppercase for the
      # aesthetify method
      if (0x0021..0x0060).include?(letter.ord) || (0x007B..0x007E).include?(letter.ord)
        output << (letter.ord + 0xFF00 - 32).chr(Encoding::UTF_8)
      elsif (0x0061..0x007A).include?(letter.ord)
        output << (letter.ord + 0xFF00 - 64).chr(Encoding::UTF_8)
      else
        output << letter
      end
    end
    output.join
  end

  def aesthetify!
    self.replace self.aesthetify
  end

  def fullwidth
    output = []
    self.split("").each do |letter|
      if(0x0021..0x007E).include?(letter.ord)
        output << (letter.ord + 0xFF00 - 32).chr(Encoding::UTF_8)
      else
        output << letter
      end
    end
    output.join
  end

  def fullwidth!
    self.replace self.fullwidth
  end
end
