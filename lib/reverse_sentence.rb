# A method to reverse the words in a sentence, in place.

def string_reverse(my_string)
  return nil if my_string.nil?
  return my_string if my_string.length == 0 || my_string.length == 1

  right = 0
  left = my_string.length - 1
  while right < left
    temp = my_string[right]
    my_string[right] = my_string[left]
    my_string[left] = temp
    right += 1
    left -= 1
  end
  return
end


def reverse_words(my_words)
  return nil if my_words.nil?
  return my_words if my_words.length == 0 || my_words == 1

  index = 0
  j = index
  while index < my_words.length
    j = index
    while my_words[j] != " " && my_words[j] != nil
      j += 1
    end

    if j != index
      right = index
      left = j - 1
      while right < left
        temp = my_words[right]
        my_words[right] = my_words[left]
        my_words[left] = temp
        right += 1
        left -= 1
      end
    end
    index = j + 1
  end
end

def reverse_sentence(my_sentence)
  string_reverse(my_sentence)
  reverse_words(my_sentence)
  my_sentence
end
