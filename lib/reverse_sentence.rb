require 'pry'
# A method to reverse the words in a sentence, in place.
def reverse_sentence(my_sentence)
  return nil if my_sentence == nil || my_sentence.length == 0

  return my_sentence if my_sentence.length == 1

  i = 0
  j = my_sentence.length - 1

  while i < j
    temp = my_sentence[i]
    my_sentence[i] = my_sentence[j]
    my_sentence [j] = temp
    i += 1
    j -= 1
  end

  index = 0

  while index < my_sentence.length
    while my_sentence[index] == " "
      index += 1
    end
    j = index
    while my_sentence[j] != " " && j < my_sentence.length - 1
      j += 1
    end
    n = index
    m = j
    while n < m
      while my_sentence[n] == " "
        n += 1
      end
      while my_sentence[m] == " "
        m -= 1
      end
      temp = my_sentence[n]
      my_sentence[n] = my_sentence[m]
      my_sentence[m] = temp
      n += 1
      m -= 1
    end
    index = j + 1
  end
  return my_sentence
end
