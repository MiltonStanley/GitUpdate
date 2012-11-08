require './config.rb'

def pull
  *repos = `cd .. && ls`.split "\n"
  puts "Found #{repos.join(', ')}"
  repos.each { |repo| system "cd .. && cd #{repo} && git pull origin master" }
end


mode = true if ARGV[0] == '-t' || ARGV[0] == '-true' || ARGV[0] == 't' || ARGV[0] == 'true'
mode = false unless mode

pull() unless mode
