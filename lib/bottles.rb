class Bottles
  def verse(num_bottles)
    @num_bottles = num_bottles
    build_verse
  end

  attr_accessor :num_bottles

  def build_verse
    if @num_bottles > 0
      first_line + second_line
    else
      no_more_bottles
    end
  end

  def first_line
    "#{@num_bottles} #{bottle_or_bottles(@num_bottles)} of beer on the wall, #{@num_bottles} #{bottle_or_bottles(@num_bottles)} of beer.\n"
  end

  def second_line
    if @num_bottles > 1
      next_bottle
    else
      last_bottle
    end
  end

  def next_bottle
    "Take one down and pass it around, #{@num_bottles - 1} #{bottle_or_bottles(@num_bottles - 1)} of beer on the wall.\n"
  end

  def last_bottle
    "Take it down and pass it around, no more bottles of beer on the wall.\n"
  end

  def bottle_or_bottles(num)
    num > 1 ? "bottles" : "bottle"
  end

  def no_more_bottles
    "No more bottles of beer on the wall, no more bottles of beer.\n"+
    "Go to the store and buy some more, 99 bottles of beer on the wall.\n"
  end

  def verses(first, last)
    song = ""
    number = first
    while number >= last do
      song += verse(number)
      if number > last
        song += "\n"
      end
      number -= 1
    end
    puts "done, #{song}"
    song
  end

  def song
    verses(99,0)
  end
end
