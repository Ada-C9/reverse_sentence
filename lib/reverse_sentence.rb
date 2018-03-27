# A method to reverse the words in a sentence, in place.
def reverse_sentence(my_sentence)

  if my_sentence == nil
    return my_sentence
  else
    starting_index = 0
    ending_index = (my_sentence.length) -1

    string_reverse(starting_index, ending_index,my_sentence)

    reverse_words(my_sentence)
  end
  return my_sentence
end



def reverse_words(my_sentence)
  i = 0
  starting_index = 0
  while i < (my_sentence.length)
    if my_sentence[i] == " "
      string_reverse(starting_index,(i-1), my_sentence)
      starting_index = i + 1
    elsif i == (my_sentence.length)-1
      string_reverse(starting_index,(i), my_sentence)
      starting_index = i + 1
    end
    i+=1
  end
end

def string_reverse(starting_index, ending_index, my_sentence)
  # my_string << "not implemented"
  if starting_index > ending_index
    return my_sentence
  else
    while starting_index < ending_index
      my_sentence[starting_index], my_sentence[ending_index] = my_sentence[ending_index], my_sentence[starting_index]
      starting_index += 1
      ending_index -=1
    end
    return my_sentence
  end
end
