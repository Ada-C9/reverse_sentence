def string_reverse(my_string)
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
  index = 0
  while index < my_words.length
    j = index
    while my_words[j] != " " && my_words[j] != nil
      j += 1
    end

    # my_words[index..(j-1)]
    if j != index
      m = index
      n = j - 1
      while m < n
        temp = my_words[m]
        my_words[m] = my_words[n]
        my_words[n] = temp
        m += 1
        n -= 1
      end
    end

    index = j + 1
  end
end

# A method to reverse the words in a sentence, in place.
def reverse_sentence(my_sentence)
  return nil if my_sentence.nil?
  return my_sentence if my_sentence.length == 0

  string_reverse(my_sentence)
  reverse_words(my_sentence)
  return my_sentence
end

# A method to reverse the words in a sentence, in place.
def reverse_sentence(my_sentence)
  return nil if my_sentence.nil?
    return my_sentence if my_sentence.length == 0

    string_reverse(my_sentence)
    reverse_words(my_sentence)
    return my_sentence
end
