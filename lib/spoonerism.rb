class Spoonerism

  attr_reader :string

  WRONG = [
    'Urm, no, two words please, or I must punish you.',
    'You do get how Spoonerisms work right?  Two words needed!',
    "I need more than one word to Spoonerize it foo'!",
    "I swear I will get all up in yo ayse if you don't give me at least two words!",
    "Don't you go givin' me less than two words now!",
    "Oh dear, it seems you suck and don't understand how Spoonerisms work!"]

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
      WRONG.sample
    end
  end


  def right_sub(string, search, replace)
    string.reverse.sub(search.reverse,replace.reverse).reverse
  end

end
