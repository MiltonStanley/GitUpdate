class String
  
  def up_to_date?
    self.include? "nothing to commit (working directory clean)"
  end

  def untracked_files_present?
    self.include? "Untracked files:"
  end

  def changes_not_staged?
    self.include? "Changes not staged for commit:"
  end

end

def status
  *repos = `cd .. && ls`.split "\n"
  repos.each do |repo|
    output = `cd .. && cd #{repo} && git status`
    legal = false
    if output.up_to_date?
      puts "#{repo} up-to-date" if output.up_to_date?
      legal = true
    end
    if output.untracked_files_present?
      puts "#{repo} has untracked files"
      legal = true
    end
    if output.changes_not_staged?
      puts "#{repo} has changes not staged for commit"
      legal = true
    end
    if legal == false
      puts "#{repo} UNKNOWN CONDITION"
    end
    puts
  end
end

puts

mode = true if ARGV[0] == '-t' || ARGV[0] == '-true' || ARGV[0] == 't' || ARGV[0] == 'true'
mode = false unless mode

status() unless mode
