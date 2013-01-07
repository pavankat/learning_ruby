p /abc/xi =~ "ABC"

p /a # First letter
	b # Second letter
	c 
	/xi =~ "Abc"

m = /abc/i.match "Abc"

p m[0]

m = /<(.+)+>(.+)*<\/(.+)+>/i

matchdata = m.match "<html>Jose</html>"

p matchdata

p matchdata[1]

p matchdata[2]

p matchdata[3]

m = /<(?<starttag>.+)+>(?<content>.+)*<\/(?<endtag>.+)+>/i

matchdata = m.match "<html>Jose</html>"

p matchdata

p matchdata[:starttag]

p matchdata[:content]

p matchdata[:endtag]

# using regex with case statements

regex1 = /garf/i

regex2 = %r{<.+>(.*)</(.+)>}im

print "Type something and I'll guess: "

case gets.chomp
when regex1
	p "is it garfield?"
when regex2
	p "it looks like HTML."
else
	p "I don't know what this is."
end