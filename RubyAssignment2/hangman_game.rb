def hangman(word)
  hidden_word = Array.new(word.length, "_")
  maximum_attempt = word.length + 2
  attempt = 0
  guessed_letter = []
  remaining_attempt = ->(attempt) { maximum_attempt - attempt }

  puts "you have #{maximum_attempt} attempt"
  puts "guess the word"
  puts hidden_word.join(" ")
  yield
  while attempt < maximum_attempt
    puts "guess the letter"
    letter = gets.chomp.chars.first.downcase
    if guessed_letter.include?(letter)
        puts "you have already guessed this letter"
        puts "attempts remaining: #{remaining_attempt.call(attempt)}"
        next
    end
    guessed_letter << letter
    if word.include?(letter)
        puts "you have guessed the correct letter"
        word.chars.each_with_index do |char, index|
            if char == letter
                hidden_word[index] = char
            end
        end
       
        puts hidden_word.join(" ")
        puts "attempts remaining: #{remaining_attempt.call(attempt)}"
        if hidden_word.join("") == word
            puts "You won! you have guessed the correct word: #{word}"
            return
        end
        next
    else
        puts "you have guessed the wrong letter"
        attempt +=1
        puts "attempts remaining: #{remaining_attempt.call(attempt)}"
    end
end
puts "Game over , your word was #{word}"
end

puts "Enter the Word:"
word = gets.chomp.downcase
puts "Enter hint"
hint = gets.chomp

system("clear")

hangman(word) do
  puts "the hint is : #{hint}"
end