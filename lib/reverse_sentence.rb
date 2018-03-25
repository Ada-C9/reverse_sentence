# A method to reverse the words in a sentence, in place.
def string_reverse(my_string)
  i = 0
  j = my_string.length - 1
  while i < j
    l = my_string[i]
    my_string[i] = my_string[j]
    my_string[j] = l
    i += 1
    j -= 1
  end
  return my_string
end

def reverse_words(my_words)
  index = 0
  while index < my_words.length
    j = index
    if my_words[index] == " "
      index += 1
    else
      while index < my_words.length && my_words[index] != " "
        index += 1
      end # => This finds the word which is equal to my_word[j...index]
      a = 0
      b = (index - j) - 1
      while a < b
        temp = my_words[j + a]
        my_words[j + a] = my_words[j + b]
        my_words[j + b] = temp
        a += 1
        b -= 1
      end
    end
  end
  return my_words
end

def reverse_sentence(my_sentence)
  return if my_sentence == nil
  return if my_sentence == ""
  return my_sentence if my_sentence.length <= 1

  string_reverse(my_sentence)
  reverse_words(my_sentence)
  return my_sentence
end
