exclude "_vimrc" unless windows?
unless linux?
    exclude ".Xresources"
    exclude ".tmux.conf"
end

# Common sense
exclude "README.markdown"
exclude "bootstrap-data.rb"
exclude "bootstrap.rb"
exclude ".gitmodules"
exclude ".git"
