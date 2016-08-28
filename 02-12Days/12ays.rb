class Xmas
  def initialize()
    @lyrics
    @sing_whole_song
  end

  def self.gifts(day = 0)
    @song = ["a partridge in a pear tree", "two turtle doves", "three french hens", "four calling birds", "FIVE GOLDEN RINGS", "six geese-a-laying", "seven swans-a-swimming", "eight maids-a-milking", "nine ladies dancing", "ten lords-a-leaping", "eleven pipers piping", "twelve drummers drumming", ]

    if day >= 1 #inserting the 'and' for days 2-12
      @song[0] = "and a partridge in a pear tree"
    else
      @song[0] = "a partridge in a pear tree"
    end

    @array = []
    g = day + 1
    g.times do
      @array << @song[day]
      day -= 1 #inserts the lines in backwards order...why backwards order? idk
    end
    return @array
  end

  def self.verse(day = 0)
    whole_song = ["a partridge in a pear tree","two turtle doves", "three french hens", "four calling birds", "FIVE GOLDEN RINGS", "six geese-a-laying", "seven swans-a-swimming", "eight maids-a-milking", "nine ladies dancing", "ten lords-a-leaping", "eleven pipers piping", "twelve drummers drumming"]

    this_day = day + 1
    case this_day
    when 1
      this_day = "first"
    when 2
      this_day = "second"
    when 3
      this_day = "third"
    when 4
      this_day = "fourth"
    when 5
      this_day = "fifth"
    when 6
      this_day = "sixth"
    when 7
      this_day = "seventh"
    when 8
      this_day = "eighth"
    when 9
      this_day = "ninth"
    when 10
      this_day = "tenth"
    when 11
      this_day = "eleventh"
    when 12
      this_day = "twelfth"
    end
    @lyrics = "On the #{this_day} day of Christmas my true love gave to me"

    if day == 0 #inserting the 'and' for days 2-12
      whole_song[0] = "a partridge in a pear tree"
    else
      whole_song[0] = "and a partridge in a pear tree"
    end

    j = day #iterator for loop for rest of song
    (day + 1).times do
      @lyrics += "\n#{whole_song[j]}"
      j -= 1
    end

    return @lyrics
  end

  def self.sing
    @sing_whole_song = ""

    i = 0
    12.times do
      puts @sing_whole_song += "#{self.verse(i)}\n\n"
      i += 1
    end

    @sing_whole_song.slice!(-1)#couldn't figure out how else to delete those last two \n's
    @sing_whole_song.slice!(-1)
    return @sing_whole_song
  end

end
