# A method to reverse the words in a sentence, in place.
def reverse_sentence(my_sentence)
  return my_sentence if my_sentence == nil || my_sentence.length <= 1

  start_index = 0
  end_index = my_sentence.length - 1

  while start_index < end_index
    temp_storage = my_sentence[start_index]
    my_sentence[start_index] = my_sentence[end_index]
    my_sentence[end_index] = temp_storage
    start_index += 1
    end_index -= 1
  end
  index = 0

  while index < my_sentence.length
    while my_sentence[index] == " "
      index += 1
    end

    inner_index = index

    while my_sentence[inner_index] != " " && inner_index < my_sentence.length - 1
      inner_index += 1
    end

    begin_index = index
  end_index = inner_index

    while begin_index < end_index
      while my_sentence[begin_index] == " "
        begin_index += 1
      end

      while my_sentence[end_index] == " "
      end_index -= 1
      end

      temp = my_sentence[begin_index]
      my_sentence[begin_index] = my_sentence[end_index]
      my_sentence[end_index] = temp
      begin_index += 1
    end_index -= 1
    end
    index = inner_index + 1
  end

  return my_sentence
end
