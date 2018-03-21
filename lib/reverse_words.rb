# A method to reverse each word in a sentence, in place.
def reverse_words(my_words)

  if my_words.nil?
    return nil
  elsif my_words.length == 0
    return my_words
  end

  k = " "
  index = 0

  until index > my_words.length

    i = index

    until my_words[i] == k || my_words[i] == nil
      i += 1
    end

    if i != index
      a = index
      b = i - 1

      until a > b
        temp = my_words[a]
        my_words[a] = my_words[b]
        my_words[b] = temp
        a += 1
        b -= 1
      end
    end

    index = i + 1
  end
end
