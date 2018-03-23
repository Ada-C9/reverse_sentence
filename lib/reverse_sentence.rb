# A method to reverse the words in a sentence, in place.
def reverse_sentence(my_sentence)
  string_reverse(my_sentence)
  reverse_words(my_sentence)
end

def string_reverse(my_string)
  return my_string if my_string == nil
  j = 0
  k = my_string.length - 1
  while j <= k
    early_value = my_string[j]
    my_string[j] = my_string[k]
    my_string[k] = early_value
    j += 1
    k -= 1
  end
end

def reverse_words(my_words)
  return my_words if my_words == nil
  length = my_words.length
  word_start = 0
  word_length = 0
  while word_start < length
    if my_words[word_start] == " "
      word_start += 1
      word_length +=1
    elsif word_length == length || my_words[word_length] == " "
      word_end = word_length - 1
      while word_start < word_end
        early_char = my_words[word_start]
        my_words[word_start] = my_words[word_end]
        my_words[word_end] = early_char
        word_start += 1
        word_end -= 1
      end
      word_start = word_length + 1
      word_length += 1
    else
      word_length += 1
    end
  end
end
