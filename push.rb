puts "This program is dangerous. If a branch is checked out,"
puts "it will overwrite master on the remote repo."
puts "Exiting now"
Kernel.exit

def push
  *repos = `cd .. && ls`.split "\n"
  puts "Found #{repos.join(', ')}"
  repos.each { |repo| system "cd .. && cd #{repo} && git push origin master" }
end


mode = true if ARGV[0] == '-t' || ARGV[0] == '-true' || ARGV[0] == 't' || ARGV[0] == 'true'
mode = false unless mode

push() unless mode
