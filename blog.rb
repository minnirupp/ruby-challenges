class Blog

	@@blog_posts = []
	@@num_posts = 0

	def self.all
		@@blog_posts
	end

	def self.add(item)
		@@blog_posts << item
		@@num_posts +=1
	end

	def self.publish
		@@blog_posts.each do |post|
			puts "Title: #{post.title}"
			puts "Author: #{post.author}"
			puts "Date: #{post.publish_date}"
			puts "#{post.content}"
		end
	end
	
end

class Post < Blog

	def self.create
		post = new
		puts "Your blog title:"
		post.title = gets.chomp
		puts "Author name:"
		post.author = gets.chomp
		post.publish_date = Time.now.strftime("%m/%d/%y")
		puts "Your blog content:"
		post.content = gets.chomp
		post.save
		puts "Do you want to create a new blog post? (Y/N)"
		create if gets.chomp == 'y'
	end

	def title=(title)
		@title = title
	end
	def title
		return @title
	end

	def content=(content)
		@content = content
	end
	def content
		return @content
	end

	def publish_date=(date)
		@date = date
	end
	def publish_date
		return @date
	end

	def author=(author)
		@author = author
	end
	def author
		return @author		
	end

	def save
		Post.add(self)
	end

end

Post.create
blog_posts = Post.all
Post.publish