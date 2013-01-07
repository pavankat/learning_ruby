def form &block
	puts "<form>"
	yield if block_given?
	puts "</form>"
end

def form_with_proc p
	puts "<form>"
	p.call true
	puts "</form>"
end

def paragraph text
	puts "<p>" + text + "</p>"
end

def quote text
	puts "<blockquote>" + text + "</blockquote>"
end

# Execute something

# replace proc with lambda and it will only run if p.call
# in the form_with_proc method is set to be true
myproc = proc do |only_quotes|
	p only_quotes
	paragraph "This is a paragraph." unless only_quotes
	quote "This is a quote from Shakespeare."
end

form_with_proc myproc