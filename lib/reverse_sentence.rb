def reverse_words(my_words)
  i = 0
  j = 0
  while i < my_words.length
    index = i

    while my_words[index] != " " && my_words[index] != nil
      index += 1
    end

    if index > 0
      j = index - 1
    else
      j = index
    end

    while i < j
      letter = my_words[i]
      my_words[i] = my_words[j]
      my_words[j] = letter

      i += 1
      j -= 1
    end

    i = index + 1

  end
  return my_words
end

def reverse_sentence(sentence)
  if sentence == nil || sentence.length == 0
    return sentence
  end

  i = 0
  j = sentence.length - 1

  while i < j do

    last = sentence[j]
    first = sentence[i]

    sentence[i] = last
    sentence[j] = first

    i += 1
    j -= 1

  end

  return reverse_words(sentence)
end
