
def reverse_sentence(my_sentence)
  string_reverse(my_sentence)

  index = 0

  while index < my_sentence.length
    until my_sentence[index] != ' '
      index += 1
    end

    until my_sentence[index] == ' ' || index >= my_sentence.length - 1
      index += 1
    end

    i = 0
    s = my_sentence.length - 1
    while i < s
      temp = my_sentence[i]
      my_sentence[i] = my_sentence[s]
      my_sentence[s] = temp
      i += 1
      s -= 1
    end

    if my_sentence[index] == ' '
      start_word = index + 1
    end

    if my_sentence[index] ==  ' ' || index >= my_sentence.length - 1
      end_word = index - 1
    end

    index += 1
  end
  return my_sentence
end

def string_reverse(my_sentence)
  i = 0
  s = my_sentence.length - 1

  while i < s
    temp = my_sentence[i]
    my_sentence[i] = my_sentence[s]
    my_sentence[s] = temp
    i += 1
    s -= 1
  end
end


puts reverse_sentence("Yoda is awesome!")
