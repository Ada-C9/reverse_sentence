# A method to reverse the words in a sentence, in place.
def reverse_sentence(my_sentence)
  return my_sentence if my_sentence.nil? || my_sentence.length <= 1

  # This section will reverse all characters in the sentence
  i = 0
  j = my_sentence.length - 1
  while i < j
    temp = my_sentence[i]
    my_sentence[i] = my_sentence[j]
    my_sentence[j] = temp
    i += 1
    j -= 1
  end

  # This section will reverse the words in the sentence
  k = 0
  while k < my_sentence.length
    until my_sentence[k] != " "
      k += 1
      return my_sentence if k == my_sentence.length
    end

    start = k

    until my_sentence[k] == " " || k == my_sentence.length - 1
      k += 1
    end

    if k == my_sentence.length - 1
      fin = k
    else
      fin = k - 1
    end

    while start < fin
      temp = my_sentence[start]
      my_sentence[start] = my_sentence[fin]
      my_sentence[fin] = temp
      start += 1
      fin -= 1
    end

    k += 1
  end
  return my_sentence
end
