repos = %w[Quandrax Quandrax_1.1.0 CPP_In_21_Days GitUpdate OrderServer Quandrax_Cpp tester Mythrealm RGB_Strip RecipeBook]

repos.each do |repo|
	system "cd .. && git clone http://www.github.com/MiltonStanley/#{repo}.git"
	system "cd .. && cd #{repo} && git remote rm origin && git remote add origin https://github.com/MiltonStanley/#{repo}.git"
end
