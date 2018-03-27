# A method to reverse the words in a sentence, in place.
def reverse_sentence(my_sentence)
  string_reverse(my_sentence)
  reverse_words(my_sentence)
end

def string_reverse(my_string)
  return if my_string.nil?
  i = 0
  while i < my_string.length / 2
    temp = my_string[i]
    my_string[i] = my_string[(my_string.length - 1) - i]
    my_string[(my_string.length - 1) - i] = temp
    i += 1
  end
end

def reverse_words(my_words)
  return my_words if my_words == nil
  word_start = 0
  word_length = 0
  while word_start < my_words.length
    if my_words[word_start] == " "
      word_start += 1
      word_length += 1
    elsif word_length == my_words.length || my_words[word_length] == " "
      word_end = word_length - 1
      while word_start < word_end
        temp = my_words[word_start]
        my_words[word_start] = my_words[word_end]
        my_words[word_end] = temp
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
