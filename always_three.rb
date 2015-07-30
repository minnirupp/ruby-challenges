def always_three(num1)
	(((num1 + 5) * 2 - 4) / 2 - num1)
end
puts "Give me a Number! nom...nom...nom! "
x = gets.chomp.to_i
puts "Tastes like " + always_three(x).to_s + " to me!"