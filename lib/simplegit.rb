# a super simple example class to use git in ruby
class SimpleGit
  
  def initialize(git_dir = '.')
    @git_dir = File.expand_path(git_dir)
  end
  
  def show(treeish = 'master')
    command("git show #{treeish}")
  end

  private
  
    def command(git_cmd)
      Dir.chdir(@git_dir) do
        return `#{git_cmd} 2>&1`.chomp
      end
    end

    def lstree(ls_tree)
	Dir.chdir(@git_dir) do
	  return `#{git_cmd} 2>$1`.chomp
	end
    end

    def lsfiles(ls_files)
	Dir.ls(@git_ls) do
	  return `#{git_cmd} 2>$1`.chomp
	end
    end 
  
end
