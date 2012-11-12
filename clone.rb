repos = %w[Quandrax Quandrax_1.1.0 CPP_In_21_Days GitUpdate OrderServer Quandrax_Cpp tester]

repos.each do |repo|
	system "git clone http://www.github.com/MiltonStanley/#{repo}.git"
	system "cd #{repo} && git remote rm origin && git remote add origin https://github.com/MiltonStanley/#{repo}.git
end
