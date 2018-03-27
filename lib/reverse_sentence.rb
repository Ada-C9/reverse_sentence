# A method to reverse the words in a sentence, in place.
def reverse_sentence(my_sentence)
  index = 0

  while index < my_sentence.length
    until my_sentence[index] != " " || index >= my_sentence.length # while or until both work
      index += 1
    end

    start_word = index

    until my_sentence[index] == ' ' || index >= my_sentence.length - 1
      index += 1
    end

    if index == my_sentence.length - 1
      end_word = index
    else
      end_word = index - 1
    end

    while start_word < end_word
      temp = my_sentence[start_word]
      my_sentence[start_word] = my_sentence[end_word]
      my_sentence[end_word] = temp

      start_word += 1
      end_word -= 1
    end

    index += 1
  end
  return my_sentence
end
