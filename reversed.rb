def backward(word)
  downcased = word.downcase
  stripped = downcased.delete("?!:;~`><@#$%^&*(){}")
  letters = stripped.chars
  number = letters.length
  string = ""
  counter = -1

  number.times do
    string << letters[counter]
    counter -= 1
  end

  puts string
end

backward("puppy")
backward("Puppy")
backward("Puppy!!~?")
