def echo(phrase)
  phrase
end

def shout(phrase)
  phrase.upcase
end

def repeat(phrase, to_repeat=2)
  result = phrase
  (to_repeat-1).times {result += " #{phrase}"}
  result
end

def start_of_word(word, num)
  word[0, num]
end

def first_word(phrase)
  phrase.split(" ")[0]
end

def titleize(phrase)
  little_words = ['the', 'and', 'is', 'a', 'an', 'over', 'in', 'on', 'of', 'or']
  array = phrase.split(" ")
  array.collect! do |word|
    if little_words.include?(word.downcase)
      word.downcase
    else
      word.capitalize
    end
  end
  array[0].capitalize!
  array.join(" ")
end
