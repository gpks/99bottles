class Bottles
  def verse(line)
    return one_verse if line == 1
    return last_verse if line == 0
    "#{line} #{bottle_form(line)} of beer on the wall, " +
    "#{line} #{bottle_form(line)} of beer.\n" +
    "Take one down and pass it around, " +
    "#{line - 1} #{bottle_form(line-1)} of beer on the wall.\n"
  end

  def verses(start_line, end_line)
    string = String.new
    start_line.downto(end_line).each do |line|
      string << verse(line)
      string << "\n"
    end
    string.chomp
  end

  def song
    verses(99,0)
  end

  private

  def one_verse
    "1 bottle of beer on the wall, " +
    "1 bottle of beer.\n" +
    "Take it down and pass it around, " +
    "no more bottles of beer on the wall.\n"
  end

  def last_verse
    "No more bottles of beer on the wall, " +
    "no more bottles of beer.\n" +
    "Go to the store and buy some more, " +
    "99 bottles of beer on the wall.\n"
  end

  def bottle_form(number)
    number > 1 ? "bottles" : "bottle"
  end
end
