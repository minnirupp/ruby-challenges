require 'rubygems'
require 'twilio-ruby'

account_sid = "ACace15bca650ad1e4d1daee88a19947e8"
auth_token = "fa8638336d60ceeb7c554037414f1022"

@client = Twilio::REST::Client.new(account_sid, auth_token)

puts "Ask me a question"
question = gets

answer = [
	"It is certain",
	"It is decidedly so",
	"Without a doubt",
	"Yes definitely",
	"You may rely on it",
	"As I see it, yes",
	"Most likely",
	"Outlook good",
	"Yes",
	"Signs point to yes",
	"Reply hazy try again",
	"Ask again later",
	"Better not tell you now",
	"Cannot predict now",
	"Concentrate and ask again",
	"Don't count on it",
	"My reply is no",
	"My sources say no",
	"Outlook not so good",
	"Very doubtful"
]

num = 1 + rand(20)

# test_message = answer[num]

message = @client.account.messages.create(
	:from => "+16122606645",
	:to => "+1__________",
	:body => answer[num]
)

puts message.to