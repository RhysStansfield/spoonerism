class Spoonerism

  def initialize string
    @string = string
  end

  def first_two
    @string[0, 2]
  end

  def first_letter_of word
    word[0, 1]
  end

  def switch_first_two
    @string[0, 2].reverse
  end

  def switch_word_beginnings(n=1)
    switch = @string.split(' ').inject do |memo, word| 
      memo[0, n], word[0, n] = word[0, n], memo[0, n]
      [memo, word]
    end
    switch.join(' ')
  end

end