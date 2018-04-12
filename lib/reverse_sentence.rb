# # A method to reverse the words in a sentence, in place.


def string_reverse(my_string)
  if my_string == nil || my_string.length <= 1
    return my_string
  else
    string = my_string
    index_f = 0
    index_l = (string.length - 1)

    while index_f - index_l <= 0
      first = string[index_f].dup
      last = string[index_l].dup
      string[index_f] = last
      string[index_l] = first

      index_f += 1
      index_l -= 1
    end
    return string
  end
end

def reverse_words(string)
  if string.nil? || string.length < 1
    return string
  end

  index = 0
  first_index = 0

  while index < string.length

    until string[index] != " " || index == (string.length - 1)
      index += 1
    end

    first_index = index

    until string[index] == " " || index == (string.length - 1)
      index += 1
    end

    last_index = index - 1

    if string[index] != " "
      last_index = index
    end

    (((last_index - first_index) + 1) / 2).times do
      first = string[first_index]
      string[first_index] = string[last_index]
      string[last_index] = first

      first_index += 1
      last_index -= 1
    end

    index += 1
  end
  return string
end

def reverse_sentence(my_sentence)
 reverse_words(string_reverse(my_sentence))
end
