# A method to reverse the words in a sentence, in place.
def reverse_sentence(my_sentence)
    return my_sentence if my_sentence.nil? || my_sentence.length <= 1

  length = my_sentence.length
  i = 0
  j = length - 1

  # reverse the whole string first
  while i < j
    temp = my_sentence[i]
    my_sentence[i] = my_sentence[j]
    my_sentence[j] = temp
    i += 1
    j -= 1
  end


  i = 0
  j = 0

  while  i < length
    j = i

    if my_sentence[i] == " "
      i += 1

    else
      while i < length && my_sentence[i] != " "
        i += 1
      end

      k = 0
      g = i - j - 1

      while k < g
        temp = my_sentence[j + k]
        my_sentence[j + k] = my_sentence[j + g]
        my_sentence[j + g] = temp
        k += 1
        g -= 1
      end

    end
  end

  return my_sentence
end
