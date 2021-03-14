call plug#begin('~/.config/nvim/bundle')

  " Plugin Section
  Plug 'mhartington/oceanic-next'

  " Vim airline
  Plug 'vim-airline/vim-airline'

  " Line numbers
  Plug 'myusuf3/numbers.vim'

  " COC
  Plug 'neoclide/coc.nvim', {'branch': 'release'}

  Plug 'leafgarland/typescript-vim'

  Plug 'peitalin/vim-jsx-typescript'
call plug#end()
"Config Section
" Or if you have Neovim >= 0.1.5
" For Neovim 0.1.3 and 0.1.4
let $NVIM_TUI_ENABLE_TRUE_COLOR=1
if (has("termguicolors"))
 set termguicolors
endif

" Ocean theme config
syntax enable
colorscheme OceanicNext

" Line numbers config
nnoremap <F3> :NumbersToggle<CR>
nnoremap <F4> :NumbersOnOff<CR>
" Pretter-COC
command! -nargs=0 Prettier :CocCommand prettier.formatFile

