class Word
  def vowels_count(phrase)
    phrase.downcase.count("/[aeiouúyáãàéóí]/")
  end
  def consonants_count(phrase)
    phrase = phrase.downcase.count("/[bcdfghjklmnpqrstvxwz]/")
  end
end

