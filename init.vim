call plug#begin('~/.config/nvim/plugins')

  " Theme
  Plug 'folke/tokyonight.nvim'

  " Nerdtree
  Plug 'preservim/nerdtree'
  Plug 'Xuyuanp/nerdtree-git-plugin'

call plug#end()

" Tokyonight theme
colorscheme tokyonight-moon

let nvim_settings_dir = '~/.config/nvim/settings/'
execute 'source '.nvim_settings_dir.'defautl.vim'
execute 'source '.nvim_settings_dir.'nerdtree.vim'
