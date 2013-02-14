puts "This program is dangerous. If a branch is checked out,"
puts "it will overwrite that branch with master on the local machine."
puts "Exiting now"
Kernel.exit

def pull
  *repos = `cd .. && ls`.split "\n"
  puts "Found #{repos.join(', ')}"
  repos.each { |repo| system "cd .. && cd #{repo} && git pull origin master" }
end

mode = true if ARGV[0] == '-t' || ARGV[0] == '-true' || ARGV[0] == 't' || ARGV[0] == 'true'
mode = false unless mode

pull() unless mode
