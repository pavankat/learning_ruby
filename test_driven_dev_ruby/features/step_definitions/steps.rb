Given /I have a competition with no questions/ do 
	@competition = Competition.new 
	@competition.stub questions: []
end

