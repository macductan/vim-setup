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

  " Code intellisense
  Plug 'neoclide/coc.nvim', {'branch': 'release'}
  Plug 'jiangmiao/auto-pairs' " Auto pairs

  " Code syntax highlight
  Plug 'pangloss/vim-javascript'

  " Auto save
  Plug '907th/vim-auto-save'

  " Debugger
  Plug 'puremourning/vimspector'

  " Git
  Plug 'airblade/vim-gitgutter'

  " Copilot
  Plug 'github/copilot.vim'
  Plug 'nvim-lua/plenary.nvim'
  Plug 'CopilotC-Nvim/CopilotChat.nvim'

call plug#end()

let nvim_settings_dir = '~/.config/nvim/settings/'
execute 'source '.nvim_settings_dir.'auto-save.vim'
execute 'source '.nvim_settings_dir.'coc.vim'
execute 'source '.nvim_settings_dir.'copilot.vim'
execute 'source '.nvim_settings_dir.'defautl.vim'
execute 'source '.nvim_settings_dir.'ftf.vim'
execute 'source '.nvim_settings_dir.'nerdtree.vim'
execute 'source '.nvim_settings_dir.'tokyonight.vim'
execute 'source '.nvim_settings_dir.'vim-airline.vim'
execute 'source '.nvim_settings_dir.'vim-floaterm.vim'
execute 'source '.nvim_settings_dir.'vim-javascript.vim'
execute 'source '.nvim_settings_dir.'vimspector.vim'
