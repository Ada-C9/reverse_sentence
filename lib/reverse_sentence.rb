def string_reverse(my_string)
  return nil if my_string == nil || my_string.length == 0

  return my_string if my_string.length == 1

  idx_alpha = 0
  idx_beta = my_string.length - 1

  while idx_alpha < idx_beta
    temp = my_string[idx_alpha]
    my_string[idx_alpha] = my_string[idx_beta]
    my_string[idx_beta] = temp
    idx_alpha += 1
    idx_beta -= 1
  end
  return my_string
end

def reverse_words(words)
  return nil if words == nil || words.length == 0

  word_start = 0
  word_end = 0
  i = 0

  while i < words.length - 1

    until words[i] != " "
      word_start += 1
      i += 1
    end

    i = word_start
    word_end = word_start

    until words[i] == " " || i == words.length
      word_end += 1
      i += 1
    end

    words[word_start...word_end] = string_reverse(words[word_start...word_end])

    word_start = word_end
    i = word_end
  end
  return words
end

def string_reverse(my_string)
  return my_string if my_string.length == 1

  idx_alpha = 0
  idx_beta = my_string.length - 1

  while idx_alpha < idx_beta
    temp = my_string[idx_alpha]
    my_string[idx_alpha] = my_string[idx_beta]
    my_string[idx_beta] = temp
    idx_alpha += 1
    idx_beta -= 1
  end
  return my_string
end


# A method to reverse the words in a sentence, in place.
def reverse_sentence(sentence)
  return nil if sentence == nil

  return sentence if sentence.length == 0

  string_reverse(sentence)
  reverse_words(sentence)

  return sentence
end
