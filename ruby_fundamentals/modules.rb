# encoding: utf-8
require_relative "blog"
require_relative "tweetable"

post = Blog::Post.new author: "Jose Mota",\
	 title: "A title", body: "A body"

post2 = Blog::Post.new author: "Jose Mota",\
	 title: "A title", body: "A body"

post.extend Tweetable

post.tweet

# this won't work because it's not extended by Tweetable
post2.tweet

=begin

post.insert_random_comment
post.insert_random_comment
post.insert_random_comment

post.comments.each { |c| c.tweet }

=end
