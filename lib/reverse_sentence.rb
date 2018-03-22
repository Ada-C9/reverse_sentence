# A method to reverse a string in place.
def reverse_sentence(my_sentence)

  return nil if my_sentence.nil?

  index = 0

  (my_sentence.length / 2).times do |num|
    index -= 1

    letter = my_sentence[index]
    my_sentence[index] = my_sentence[num]
    my_sentence[num] = letter

  end

  reverse_words(my_sentence)

end

def reverse_words(my_words)

  return nil if my_words.nil?

  word_start = 0
  word_end = 0

  until word_start >= my_words.length

    until my_words[word_end].nil? || my_words[word_end] == " "
      word_end += 1
    end

    ((word_end - word_start) / 2).times do |num|

      letter = my_words[word_start + num]
      my_words[word_start + num] = my_words[word_end - num - 1]
      my_words[word_end - num - 1] = letter

    end

    word_end += 1
    word_start = word_end

  end

end
