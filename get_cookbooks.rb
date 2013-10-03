require 'fileutils'

# adjust this path if needed
# but note: you must adjust Vagrantfile accordingly
cookbooks_path = 'cookbooks'


# create cookbooks directory if needed
unless File.directory?(cookbooks_path)
    FileUtils.mkdir_p(cookbooks_path)
end

DATA.each_line.map(&:chomp).each do |url|
    
    `cd #{cookbooks_path}; git clone #{url} -q`

end

__END__
git@github.com:opscode-cookbooks/tmux.git
git@github.com:opscode-cookbooks/vim.git
git@github.com:opscode-cookbooks/git.git
