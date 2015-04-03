def translate(phrase)
  vowels = "aeiou"

  array = phrase.split(" ")

  array.collect! do |word|
    count = 0
    word.split("").each do |letter|
      if vowels.include?(letter)
        break
      else
        count += 1
      end
    end
    if count > 0
      if word[0...count+1].downcase.include?("qu")
        word += word[0...count+1].downcase + "ay"
        count += 1
      else
        word += word[0...count].downcase + "ay"
      end
    else
      word += "ay"
    end
    if word == word.capitalize
      word = word[count..-1].capitalize
    else
      word = word[count..-1]
    end
  end
  array.join(" ")
end
