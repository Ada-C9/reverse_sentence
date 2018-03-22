# A method to reverse the words in a sentence, in place.
require 'pry'
def reverse_sentence(my_sentence)
  if my_sentence == nil
    return nil
  elsif my_sentence.length == 1
    return my_sentence
  end

  string_reverse(my_sentence)
  reverse_words(my_sentence)
  return my_sentence
end

# reverses a string in place
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

# reverses each word (in place) in a sentence
def reverse_words(my_words)
  i = 0
  j = 0
  k = 0
  while my_words[k] != nil
    while my_words[k] != " " && my_words[k] != nil
      k += 1
    end

    k > 0 ? j = k - 1 : j = k
    while i < j
      temp = my_words[i]
      my_words[i] = my_words[j]
      my_words[j] = temp

      i += 1
      j -= 1
    end
    k += 1
    i = k
  end
  return my_words
end
