# A method to reverse the words in a sentence, in place.

def string_reverse(my_string)
  if my_string.nil?
    return nil
  else my_string.length == 0 || my_string.length == 1
    return my_string
  end

  i = 0
  j = my_string.length - 1

  while i < j
    temp = my_string[i]
    my_string[i] = my_string[j]
    my_string[j] = temp

    i += 1
    j -= 1
  end
  return my_string
end

def reverse_words(my_words)
  if my_words.nil? || my_words.length == 1
    return my_words
  end

  word_begin = 0
  word_length = 0

  while word_begin < my_words.length
    if my_words[word_begin] == " "
      word_begin += 1
      word_length += 1
    elsif word_length == my_words.length || my_words[word_length] == " "
      word_end = word_length - 1
      while word_begin < word_end
        temp_char = my_words[word_begin]
        my_words[word_begin] = my_words[word_end]
        my_words[word_end] = temp_char
        word_begin += 1
        word_end += 1
      end
      word_begin = word_length + 1
      word_length += 1
    else
      word_length += 1
    end
  end
  return my_words
end

def reverse_sentence(my_sentence)
  if my_sentence.nil? || my_sentence.length < 2
    return my_sentence
  end

  string_reverse(my_sentence)
  reverse_words(my_sentence)
  return my_sentence
end
