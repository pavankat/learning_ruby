# encoding: utf-8
require_relative "blog"

post = Blog::Post.new author: "Jose Mota",\
	 title: "A title", body: "A body", \
	 comments: Blog::Comment.new(user: \
	 	"Jeffrey Way", body: "A comment")

p post