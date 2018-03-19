=begin
  The basic premise is we shift characters into the Fullwidth and Halfwidth
  Unicode character space using simple arithmetic and a 0x0020 (32) character
  offset since the ASCII characters with fullwidth replacements only begin
  showing up at 0x0021 in Unicode (0x0020 is the space character).
=end

class String
  def aesthetify
    output = []
    # Did you know? You can do something like this without a `self`
    split("").each do |letter|
      # We skip lowercase letters so we can turn them uppercase for the
      # aesthetify method
      if (0x0021..0x0060).cover?(letter.ord) || (0x007B..0x007E).cover?(letter.ord)
        output << (letter.ord + 0xFF00 - 32).chr(Encoding::UTF_8)
      elsif (0x0061..0x007A).cover?(letter.ord)
        output << (letter.ord + 0xFF00 - 64).chr(Encoding::UTF_8)
      else
        output << letter
      end
    end
    output.join
  end

  def aesthetify!
    replace aesthetify
  end

  def fullwidth
    output = []
    split("").each do |letter|
      if (0x0021..0x007E).cover?(letter.ord)
        output << (letter.ord + 0xFF00 - 32).chr(Encoding::UTF_8)
      else
        output << letter
      end
    end
    output.join
  end

  def fullwidth!
    replace fullwidth
  end
end
