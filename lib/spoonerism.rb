class Spoonerism

  attr_reader :string

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
    begin
      first, second = string.split(' ').sort_by(&:length)[-2,2]
      raise unless second != nil
      old_first, old_second = first.dup, second.dup
      first[0, n], second[0, n] = second[0, n], first[0, n]
      right_sub(string.gsub(old_first,first),old_second,second).downcase.capitalize
    rescue
      "Need more than one word to Spoonerize it foo'!"
    end
  end


  def right_sub(string, search, replace)
    string.reverse.sub(search.reverse,replace.reverse).reverse
  end

end
