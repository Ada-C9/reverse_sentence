# A method to reverse the words in a sentence, in place.


def reverse_sentence(my_sentence)
  return if my_sentence == nil 
  length = my_sentence.length

  b = length - 1
  i = 0

  while i < b
    temp = my_sentence[b]
    my_sentence[b] = my_sentence[i]
    my_sentence[i] = temp

    b -= 1
    i += 1
  end

  array = []
  i = 0
  while i < length do
    temp = ""
    until my_sentence[i] == " " || my_sentence[i] == nil
      temp += my_sentence[i]
      i += 1
    end
    array << temp

    if my_sentence[i] == " "
      array << my_sentence[i]
      i += 1
    end
  end

  new_length = array.length
  counter = 0

  last_words = ""

  new_length.times do
    word = array[counter]
    front_counter = 0
    back_counter = word.length - 1

    while back_counter > front_counter do
      temp_letter = word[back_counter]
      word[back_counter] = word[front_counter]
      word[front_counter] = temp_letter
      front_counter += 1
      back_counter -= 1
    end
    last_words += word

    counter += 1
  end

  a = 0
  length.times do
    my_sentence[a] = last_words[a]
    a += 1
  end


end
