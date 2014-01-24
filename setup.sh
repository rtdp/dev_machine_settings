
# get pathogen
mkdir -p ~/.vim/autoload ~/.vim/bundle; \
curl -Sso ~/.vim/autoload/pathogen.vim \
    https://raw.github.com/tpope/vim-pathogen/master/autoload/pathogen.vim


# get rails-vim
git clone git@github.com:tpope/vim-rails.git ~/.vim/bundle/vim-rails


# get ctrlp
git clone git@github.com:kien/ctrlp.vim.git ~/.vim/bundle/ctrlp.vim

