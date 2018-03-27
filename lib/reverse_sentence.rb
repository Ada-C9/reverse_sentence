# A method to reverse the words in a sentence, in place.

def reverse_sentence(my_sentence)
  index = 0

  while index < my_sentence.length
    until my_sentence[index] != ' '|| index >= my_sentence.length # while or until both work
      index += 1
    end

    until my_sentence[index] == ' ' || index >= my_sentence.length - 1
      index += 1
    end

    if index == ' '
      start_word = index + 1
    else
      start_word = index[0] # changed from 'index'
    end

    if index ==  ' ' || index >= my_sentence.length - 1
      end_word = index
    else
      end_word = index - 1
    end

    start_left = (index[start_word]..index[end_word])
    end_right = (index[start_word]..index[end_word])

    while start_left < end_right
      temp = my_sentence[start_left]
      my_sentence[start_left] = my_sentence[end_right]
      my_sentence[end_right] = temp

      start_left += 1
      end_right -= 1
    end

    index += 1
  end

  return my_sentence
end
