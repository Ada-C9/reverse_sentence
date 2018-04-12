require 'pry'
def reverse_sentence(my_sentence)

  if my_sentence == nil
    return nil
  end

  length = my_sentence.length

  if length < 2
    return my_sentence
  end

  front_index = 0
  back_index = 1

  

  while front_index <= back_index && back_index != nil

    if my_sentence[back_index] == " " or back_index == length
      starting = front_index
      ending = back_index - 1
      word = (front_index..back_index-1)



      front_index = back_index + 1
    end

    if my_sentence[back_index] != nil
      back_index += 1
    end


  spaces_front = 0
    spaces_back = 0

    if my_sentence[back_index] == " "
      spaces_front = back_index
      spaces_back = back_index

      while my_sentence[spaces_back] == " "
        spaces_back += 1
      end

      spaces = (spaces_front..spaces_back - 1)

      array << my_sentence[spaces]

    end

  end

  array_front_index = 0
  array_back_index = array.length - 1
  var = 0


  while array_front_index < array_back_index
    var = array[array_front_index]
    array[array_front_index] = array[array_back_index]
    array[array_back_index] = var

    array_front_index += 1
    array_back_index -= 1
  end

  my_sentence = ""
  i = 0
  while array[i] != nil
    my_sentence << array[i]
    i += 1
  end


  return my_sentence

end

puts string = "  I can do this!     "
print reverse_sentence(string)
