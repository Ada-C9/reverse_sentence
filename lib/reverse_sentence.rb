# A method to reverse the words in a sentence, in place.
def reverse_sentence(my_sentence)

  if my_sentence == nil || my_sentence.length < 1
    return my_sentence
  end

  origin = 0
  x = 0

  while x < my_sentence.length
    if my_sentence[x] != " "
      # space and word_2 for "An gs" not "  sdf sd"
      while my_sentence[x] != " "
        x += 1
        block2_start = x
      end

      while my_sentence[x] == " "
        x += 1
      end

      word = [origin...block2_start]
      origin = x
      space = [block2_start...origin]
      word_space = word + space

      while my_sentence[x] != " "
        x += 1
      end

      block2 = [origin...x].to_s

    else
      # space and word_2 for "An gs n" not " sdf sd d"
      while my_sentence[x] != " "
        x += 1
        block2_start = x
      end

      while my_sentence[x] == " "
        x += 1
      end

      space = [origin...block2_start]
      origin = x
      word = [block2_start...origin]
      word_space = space + word

      while my_sentence[x] == " "
        x += 1
      end

      block2 = [origin...x].to_s
    end

    frameshift_index = x - 1

    x.times do |character|
      my_sentence[(frameshift_index + block2.length)] = my_sentence[frameshift_index]
      frameshift_index -= 1
    end

    # insert word_2
    my_sentence[0...x] = block2
  end
end

puts reverse_sentence("Hellow is it me")
