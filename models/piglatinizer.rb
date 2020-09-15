class PigLatinizer
  
    def piglatinize(phrase)
    @phrase = phrase
    split_phrase = @phrase.split(" ")
    split_phrase.map { |word|
      if word[0].match(/[aAeEiIoOuU]/)
        word + "way"
      else
        vowel_index = word.index(/[aAeEiIoOuU]/)
        consonants = word.slice(0..vowel_index - 1)
        word_leftover = word.slice(vowel_index..word.length)
        word_leftover + consonants + "ay"
      end
    }.join(" ")
  end
end
