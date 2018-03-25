# A method to reverse the words in a sentence, in place.
def reverse_sentence(my_sentence)

  return my_sentence if my_sentence == nil || my_sentence.length < 2

  reverse_word(my_sentence, 0, my_sentence.length - 1)

  j = 0
  while j < my_sentence.length

    while my_sentence[j] == " "
      j += 1
    end

    i = j
    while my_sentence[j] != " " && my_sentence[j] != nil
      j += 1
    end
    reverse_word(my_sentence, i, j - 1)
  end
end

def reverse_word(string, beginning, ending)

  i = beginning
  j = ending

  while j > i
    temp = string[i]
    string[i] = string[j]
    string[j] = temp
    i += 1
    j -= 1
  end
end
