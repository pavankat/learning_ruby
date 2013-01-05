def run_block block
	puts "Running a "
	block.call
	puts "... done.\n\n"
end

# lambdas will run the block and finish 
# the rest of the method

# procs will stop after the block is run

def app
	run_block lambda { print "lambda"; return }
	run_block proc { print "proc\n"; return }
end

app