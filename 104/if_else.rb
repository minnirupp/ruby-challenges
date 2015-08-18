if 1 + 1 == 2
	puts "1 and 1 does indeed equal 2"
end

my_name = "Skillcrush"
if my_name == "Skillcrush"
	puts "Hellooooooo, Skillcrush!"
end

my_name2 = "Chris"
if my_name2 == "Skillcrush"
	puts "Hellooooooo, Skillcrush!"
else
	puts "Oops, I thought your name was Skillcrush. Sorry about that #{my_name2}!"
end

print "What's your favorite color?"
fav_color = gets.chomp
if (fav_color == 'red')
	puts "Red like fire!"
elsif (fav_color == ' orange')
	puts "Orange like, well ... and orange."
elsif (fav_color == 'yellow')
	puts "Yellow daffodils are so pretty in the spring!"
elsif (fav_color == 'green')
	puts "Have you been to the Emerald City in Oz?"
elsif (fav_color == 'blue')
	puts "Blue like the sky!"
elsif (fav_color == 'purple')
	puts "Purple plums are the tastiest."
else
	puts "Hmm, well I don't know what color #{fav_color} is!"
end