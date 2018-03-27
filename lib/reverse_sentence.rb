# A method to reverse the words in a sentence, in place.
def string_reverse(my_string)
  return nil if my_string.nil?
  return my_string if my_string.length == 0 || my_string.length == 1

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

if my_words.nil?
    return nil
  elsif my_words.length == 0
    return my_words
  end

  k = " "
  index = 0

  until index > my_words.length

    i = index

    until my_words[i] == k || my_words[i] == nil
      i += 1
    end

    if i != index
      a = index
      b = i - 1

      until a > b
        temp = my_words[a]
        my_words[a] = my_words[b]
        my_words[b] = temp
        a += 1
        b -= 1
      end
    end

    index = i + 1
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
