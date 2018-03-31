require "pry"

def reverse_sentence(my_sentence)
  return nil if my_sentence == nil 
  string_reverse(my_sentence)
  index = 0

  while index < my_sentence.length
    until my_sentence[index] != " " #|| index >= my_sentence.length
      index += 1
    end

    start = index

    until my_sentence[index] == ' ' || index >= my_sentence.length - 1
      index += 1
    end

    if index == my_sentence.length - 1
      end_point = index
    else
      end_point = index - 1
    end

    while start < end_point
      temp = my_sentence[start]
      my_sentence[start] = my_sentence[end_point]
      my_sentence[end_point] = temp

      start += 1
      end_point -= 1
    end

    # string_reverse(my_sentence)
    index += 1
  end

  return my_sentence
end

def string_reverse(my_sentence)
  i = 0
  s = my_sentence.length - 1

  while i < s
    temp = my_sentence[i]
    my_sentence[i] = my_sentence[s]
    my_sentence[s] = temp
    i += 1
    s -= 1
  end
end

puts reverse_sentence("Yoda is awesome!")
