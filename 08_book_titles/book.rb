class Book
  $articles = ["the", "a", "an"]
  $conjunctions = ["and"]
  $prepositions = ["in", "of"]
  def title
    @title
  end

  def title=(value)
    title = value.split(" ")
    title.collect! do |word|
      if $conjunctions.include?(word) || $prepositions.include?(word) || $articles.include?(word)
        word
      else
        word.capitalize
      end
    end
    title[0].capitalize!
    @title = title.join(" ")
  end
end

