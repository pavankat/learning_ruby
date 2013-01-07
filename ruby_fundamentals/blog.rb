# encoding: utf-8
require_relative "tweetable"

module Blog

	class Post
		# include Tweetable

		# we will have 4 getters for the Post class
		attr_reader :author, :title, :body, :comments

		#def initialize author, title, body, comments = []
		#	@author = author
		#	@title = title
		#	@body = body
		#	@comments = comments
		#end

		def initialize options
			@author = options[:author]
			@title = options[:title]
			@body = options[:body]
			# if it doesnt exist then the empty list will 
			# take its place
			@comments = options[:comments] || []
		end

		def insert_comment comment
			@comments << comment
		end

		def insert_random_comment
			@comments << Comment.new(user: "Jose Mota",\
			 body: "A body")
		end

		def print
			puts "This post is called: '#@title' and \
			it has the folowing comments:"
			begin
			@comments.each do |c|
				c.print
			end
			rescue UserNotFound => details
				puts "Error: #{details.message}"
				raise
			end
		end

	end

	class Comment
		include Tweetable

		# we will have 2 getters for the Comment class
		attr_reader :user, :body

		def initialize options
			@user = options[:user]
			@body = options[:body]
		end

		def print
			raise UserNotFound, \
			"Comment has no user, please fix this!"\
			 if @user.nil?
			puts "This comment was posted by '#@user': #@body"
		end
	end

	class UserNotFound < StandardError
	
	end

end

# Program

=begin
post = Post.new "Jose Mota", "My first post", \
"This post is awesome", []
=end

=begin
post = Post.new author: "Jose Mota",
	title: "My first post",
	body: "The post is awesome",
	comments: []

post.insert_comments \
	Comment.new({ 
		user: "Jeffrey Way", 
		body: "Nice post, I'll take it."
		}), 
	Comment.new({ 
		user: "Jose Mota", 
		body:"Sorry, not for sale" 
		})

# p post.inspect

def method *list
	p list.inspect
end

method 1, 2, 3, 4, 5


args = [6,7,8,9,10]

# * makes the array a list I think
method *args

method *[1,2], 3, *[4,5]
=end
