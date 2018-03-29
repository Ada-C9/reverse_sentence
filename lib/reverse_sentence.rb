# A method to reverse the words in a sentence, in place.
def reverse_sentence(my_sentence)
  return if my_sentence == nil
  length = my_sentence.length
  return my_sentence if length < 2

  reverse(my_sentence, 0, length - 1)
  reverse_word(my_sentence, length)
  # raise NotImplementedError
end

def reverse_word(my_sentence, length)
  i = 0
  j = 0

  while i < length
    j = i

    while my_sentence[i] == " "
      i += 1
      j += 1
    end

    while my_sentence[i] != nil && my_sentence[i] != " "
      i += 1
    end

    reverse(my_sentence, j, i-1)
    # i += 1
  end
end

def reverse(str, first, last)
  while first < last
    temp = str[first]
    str[first] = str[last]
    str[last] = temp
    first += 1
    last -= 1
  end
end
