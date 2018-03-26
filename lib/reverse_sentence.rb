# A method to reverse the words in a sentence, in place.

def reverse_sentence(my_sentence)
  return if my_sentence == nil
  length = my_sentence.length
  return if length < 2

  front_counter = 0
  back_counter = length - 1
  while front_counter < back_counter do
    temp = my_sentence[back_counter]
    my_sentence[back_counter] = my_sentence[front_counter]
    my_sentence[front_counter] = temp
    front_counter += 1
    back_counter -= 1
  end

  reverse_word(my_sentence, length)

end


def reverse_word(my_sentence, length) # do a loop table!!!
  i = 0
  j = 0
  while i < length
    j = i

    while my_sentence[i] == " "
      i += 1
      j += 1
    end

    while my_sentence[i] != " " && my_sentence[i] != nil
      i += 1
    end
    reverse(my_sentence, j, i-1)
    i += 1
  end

end

def reverse(string, beginning, ending)
  j = beginning
  i = ending

  while j < i
    temp = string[j]
    string[j] = string[i]
    string[i] = temp
    j += 1
    i -= 1
  end
end
