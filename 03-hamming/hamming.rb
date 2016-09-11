require_relative 'hamming_test.rb'
class Hamming
  def initialize
  end
  def self.compute(string_1,string_2)
    if string_1.length != string_2.length
      raise ArgumentError
    end

    i = 0
    differences = 0
    ( string_1.length ).times do
      if string_1[i] == string_2[i]
      else
        differences += 1
      end
      i += 1
    end
    return differences
  end
end
