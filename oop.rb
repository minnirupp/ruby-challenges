class Player

	attr_accessor :name, :team, :position, :bats, :throws

end

class Tiger < Player

	attr_accessor :nationality

end
 
my_player = Tiger.new
my_player.name = "Miguel Cabrera"
my_player.team = "Detroit Tigers"
my_player.position = "1st Base"
my_player.bats = "right"
my_player.throws = "right"
my_player.nationality = "Venezuela"

player_team = my_player.team
player_name = my_player.name
player_position = my_player.position
player_bats = my_player.bats
player_throws = my_player.throws
player_nationality = my_player.nationality

puts my_player.inspect
puts "#{player_name} plays #{player_position} for the #{player_team}. He bats #{player_bats} and throws #{player_throws}."