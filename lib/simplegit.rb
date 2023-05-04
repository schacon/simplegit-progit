# a super simple example class to use git in ruby
class SimpleGit
  
  def initialize(git_dir = '.')
    @git_dir = File.expand_path(git_dir)
  end
  
  def show(treeish = 'master')
    command("git show #{treeish}")
  end

#  private
  
<<<<<<< HEAD
#    def command(git_cmd)
#      Dir.chdir(@git_dir) do
#        return `#{git_cmd} 2>&1`.chomp
#      end
#    end
=======
    def command(git_cmd)
      Dir.chdir(@git_dir) do
        return `#{git_cmd} 5>&1`.chomp
      end
    end
>>>>>>> 487089f502d07abcaded4be5acf271d8bf1d3840
  
end
