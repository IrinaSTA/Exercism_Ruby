class Scrabble

  attr_reader :word

  @@dictionary = {
    "A"=>1, "B"=>3, "C"=>3, "D"=>2, "E"=>1, "F"=>4, "G"=>2, "H"=>4, "I"=>1,
    "J"=>8, "K"=>5, "L"=>1, "M"=>3, "N"=>1, "O"=>1, "P"=>3, "Q"=>10, "R"=>1,
    "S"=>1, "T"=>1, "U"=>1, "V"=>4, "W"=>4, "X"=>8, "Y"=>4, "Z"=>10, ""=>0
  }

  def dictionary
    @@dictionary
  end

  def initialize(word)
    @word = word.upcase
  end

  def self.score(word)
    Scrabble.new(word).score
  end

  def score
    score = 0
    for each in letters
      score += score_letter(each)
    end
    score
  end

  def letters
    word.split(//) if word
  end

  def score_letter(letter)
    dictionary[letter]
  end

end
