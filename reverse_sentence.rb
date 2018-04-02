# A method to reverse the words in a sentence, in place.
def reverse_sentence(my_sentence)

  if my_sentence == nil
    return nil

  end

  index = 0
  arr_length = my_sentence.length - 1
  while index < arr_length
    c = my_sentence[index]
    my_sentence[index] = my_sentence[arr_length]
    my_sentence[arr_length] = c

    index += 1
    arr_length -= 1
  end

  a = 0
  b = my_sentence.length
  while a < b

    while my_sentence[a] == " "
      a += 1
    end

    first_word = a

    while my_sentence[first_word] != " " && first_word < my_sentence.length - 1
      first_word += 1
    end

    c = a
    d = first_word


    while c < d
      while my_sentence[c] == " "
        c += 1
      end

      while my_sentence[d] == " "
        d -= 1
      end
      temp_value = my_sentence[c]
      my_sentence[c] = my_sentence[d]
      my_sentence[d] = temp_value

      c += 1
      d -= 1
    end

    a = first_word + 1
  end
  return my_sentence

  # raise NotImplementedError
end
