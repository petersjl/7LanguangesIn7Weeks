random = rand(10)
puts 'Guess the number'
while true
	guess = gets
	if guess.to_i == random
		puts 'You guessed it'
		break
	else
		puts 'Nope. Try again'
	end
end