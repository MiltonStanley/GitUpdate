# deprecated: Quandrax_1.1.0 Quandrax_Cpp OrderServer tester
repos = %w[Quandrax CPP_In_21_Days GitUpdate Synthduino tester Mythrealm RGB_Strip RecipeBook]

repos.each do |repo|
	system "cd .. && git clone http://www.github.com/MiltonStanley/#{repo}.git"
	system "cd .. && cd #{repo} && git remote rm origin && git remote add origin https://github.com/MiltonStanley/#{repo}.git"
end
