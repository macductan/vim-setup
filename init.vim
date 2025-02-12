call plug#begin('~/.config/nvim/plugins')

  " Theme
  Plug 'folke/tokyonight.nvim'

  " File browser
  Plug 'preservim/nerdtree'
  Plug 'Xuyuanp/nerdtree-git-plugin'
  Plug 'ryanoasis/vim-devicons'
  Plug 'tiagofumo/vim-nerdtree-syntax-highlight'
  Plug 'PhilRunninger/nerdtree-visual-selection'

  " File search
  Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
  Plug 'junegunn/fzf.vim'

  " Status bar
  Plug 'vim-airline/vim-airline'
  Plug 'vim-airline/vim-airline-themes'

  " Terminal
  Plug 'voldikss/vim-floaterm'

  " Code completion
  Plug 'neoclide/coc.nvim', {'branch': 'release'}

call plug#end()

" Tokyonight theme
colorscheme tokyonight-moon

let nvim_settings_dir = '~/.config/nvim/settings/'
execute 'source '.nvim_settings_dir.'defautl.vim'
execute 'source '.nvim_settings_dir.'nerdtree.vim'
execute 'source '.nvim_settings_dir.'ftf.vim'
execute 'source '.nvim_settings_dir.'vim-airline.vim'
execute 'source '.nvim_settings_dir.'vim-floaterm.vim'
execute 'source '.nvim_settings_dir.'coc.vim'
