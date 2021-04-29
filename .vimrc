syntax on

set number

"set cursorline

set hlsearch

set smartindent

set ruler

set tabstop=4
set shiftwidth=4
"set expandtab
set noexpandtab
set listchars=tab:>-,trail:~,extends:>,precedes:<
set list

set nowrap

set mouse=a

set colorcolumn=81

" our <leader> will be the space key
let mapleader=" "

set nocompatible              " be iMproved, required

" Specify a directory for plugins
" - For Neovim: ~/.local/share/nvim/plugged
" - Avoid using standard Vim directory names like 'plugin'
call plug#begin('~/.vim/plugged')

Plug 'godlygeek/tabular'

Plug 'tpope/vim-commentary'

Plug 'https://gitee.com/izhengfan/vimtex', {'for': ['tex', 'latex']}

Plug 'wannesm/wmgraphviz.vim'

Plug 'plasticboy/vim-markdown', {'for': 'markdown' }

Plug 'mzlogin/vim-markdown-toc', {'for': 'markdown' }

Plug 'octol/vim-cpp-enhanced-highlight'

Plug 'tpope/vim-surround'

Plug 'skywind3000/asyncrun.vim'

Plug 'https://gitee.com/izhengfan/LeaderF'

Plug 'kien/rainbow_parentheses.vim'

Plug 'jiangmiao/auto-pairs'

Plug 'https://gitee.com/izhengfan/coc.nvim', {'branch': 'release'}

Plug 'editorconfig/editorconfig-vim'

Plug 'morhetz/gruvbox'

Plug 'SirVer/ultisnips'
Plug 'honza/vim-snippets'

" Initialize plugin system
call plug#end()

filetype plugin indent on
" auto cmd for file type
au FileType tex,cmake,xml setlocal shiftwidth=2 tabstop=2 expandtab
au FileType tex setlocal foldlevelstart=8 foldlevel=8
au FileType tex nnoremap <F6> :! latexmk -xelatex -outdir=$HOME/.temp/tex/ % && evince ~/.temp/tex/%:r.pdf& <CR>
au FileType python,sh nnoremap <F5> :!./%<CR>
au BufReadPost *.MD set filetype=markdown
let g:vim_markdown_no_extensions_in_markdown = 1
au BufReadPost *.launch set filetype=xml "ros launch file
au BufReadPost *.urdf set filetype=xml "ros urdf file

" indentation for c/cpp
set cindent
set cinoptions+=L0
set cinoptions+=g0
set cinoptions+=:0
" set cinoptions+=N-s
set cinoptions+=E-s
set cinoptions+=(4
" set cinoptions+=(0,W8

" for termdebug
let g:termdebug_wide = 163

" for asyncrun
" open quickfix window with height=6
let g:asyncrun_open = 6
let g:asyncrun_bell = 0

" cpp highlight enhance
let g:cpp_class_scope_highlight = 1
let g:cpp_member_variable_highlight = 1
let g:cpp_class_decl_highlight = 1
"let g:cpp_experimental_template_highlight = 1

au FocusGained * :redraw!
au BufWritePost * :redraw!

" manual folding
" :set foldmethod=manual
let g:vim_markdown_folding_disabled = 1

" enable matchit plugin
runtime macros/matchit.vim

" rainbow parentheses
let g:rbpt_colorpairs = [
    \ ['brown',       'RoyalBlue3'],
    \ ['Darkblue',    'SeaGreen3'],
    \ ['darkgray',    'DarkOrchid3'],
    \ ['darkgreen',   'firebrick3'],
    \ ['darkcyan',    'RoyalBlue3'],
    \ ['darkred',     'SeaGreen3'],
    \ ['darkmagenta', 'DarkOrchid3'],
    \ ['brown',       'firebrick3'],
    \ ['gray',        'RoyalBlue3'],
    \ ['darkmagenta', 'DarkOrchid3'],
    \ ['Darkblue',    'firebrick3'],
    \ ['darkgreen',   'RoyalBlue3'],
    \ ['darkcyan',    'SeaGreen3'],
    \ ['darkred',     'DarkOrchid3'],
    \ ['red',         'firebrick3'],
    \ ]
au VimEnter * RainbowParenthesesToggle
au Syntax * RainbowParenthesesLoadRound
au Syntax * RainbowParenthesesLoadSquare
au Syntax * RainbowParenthesesLoadBraces

let s:current_vimrc_path = expand("<sfile>:p:h")
" exe 'source '. fnameescape( s:current_vimrc_path . '/ycm.vim' )
exe 'source '. fnameescape( s:current_vimrc_path . '/coc.nvim.vim' )
exe 'source '. fnameescape( s:current_vimrc_path . '/leaderf.vim' )
" exe 'source '. fnameescape( s:current_vimrc_path . '/fcitx.vim' )
exe 'source '. fnameescape( s:current_vimrc_path . '/cabbrev.vim' )
exe 'source '. fnameescape( s:current_vimrc_path . '/keybind.vim' )

set timeoutlen=300

" colorscheme
set termguicolors

" local .vimrc
if filereadable('.vimrc.local')
    source .vimrc.local
endif

set title
