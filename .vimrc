syntax on

set number

"set cursorline

set hlsearch

set smartindent

set ruler

set tabstop=4
set shiftwidth=4
set expandtab

" our <leader> will be the space key
let mapleader=" "

set nocompatible              " be iMproved, required

" Specify a directory for plugins
" - For Neovim: ~/.local/share/nvim/plugged
" - Avoid using standard Vim directory names like 'plugin'
call plug#begin('~/.vim/plugged')

Plug 'godlygeek/tabular'

Plug 'scrooloose/nerdtree', { 'on':  'NERDTreeToggle' }

Plug 'tpope/vim-commentary'

Plug 'gerw/vim-latex-suite', {'for': ['tex', 'latex']}

Plug 'wannesm/wmgraphviz.vim'

Plug 'plasticboy/vim-markdown', {'for': 'markdown' }

Plug 'mzlogin/vim-markdown-toc', {'for': 'markdown' }

Plug 'octol/vim-cpp-enhanced-highlight'

Plug 'tpope/vim-surround'

Plug 'skywind3000/asyncrun.vim'

Plug 'easymotion/vim-easymotion'

Plug 'Yggdroot/LeaderF'

Plug 'kien/rainbow_parentheses.vim'

Plug 'jiangmiao/auto-pairs'

Plug 'vim-scripts/ShowTrailingWhitespace'

Plug 'Valloric/YouCompleteMe'

Plug 'Shougo/echodoc.vim'

Plug 'morhetz/gruvbox'

"Plug 'NLKNguyen/papercolor-theme'
" Plug 'ludovicchabant/vim-gutentags'
"Plug 'iamcco/mathjax-support-for-mkdp'
"Plug 'iamcco/markdown-preview.vim'
"Plug 'flazz/vim-colorschemes'
"Plug 'majutsushi/tagbar'
"Plug 'Rip-Rip/clang_complete'
"Plug 'davidhalter/jedi-vim'
"Plug 'python-mode/python-mode'
" Plug 'fholgado/minibufexpl.vim'


" Initialize plugin system
call plug#end()

filetype plugin indent on
" auto cmd for file type
au FileType tex setlocal shiftwidth=2 tabstop=2
au FileType tex setlocal foldlevelstart=8 foldlevel=8
au FileType tex nnoremap <F6> :! latexmk -xelatex -outdir=$HOME/.temp/tex/ % && evince ~/.temp/tex/%:r.pdf& <CR>
au FileType python,sh nnoremap <F5> :!./%<CR>
au BufReadPost *.MD set filetype=markdown
let g:vim_markdown_no_extensions_in_markdown = 1
au BufReadPost *.launch set filetype=xml "ros launch file

" indentation for c/cpp
set cindent
set cinoptions+=L0
set cinoptions+=g0

" for termdebug
au FileType c,cpp nnoremap <F9> :Break<CR>
au FileType c,cpp nnoremap <leader><F9> :Clear<CR>
au FileType c,cpp nnoremap <F5> :Continue<CR>
au FileType c,cpp nnoremap <leader><F5> :Run<CR>
au FileType c,cpp nnoremap <F10> :Over<CR>
au FileType c,cpp nnoremap <F11> :Step<CR>
au FileType c,cpp nnoremap <leader><F11> :Finish<CR>
let g:termdebug_wide = 163

nnoremap <C-n> :NERDTreeToggle<CR>

let g:Tex_UseMakefile = 0
let g:Tex_CompileRule_pdf = 'latexmk -f -pdf -src-specials --synctex=1 --interaction=nonstopmode $*'
let g:Tex_ViewRule_pdf = 'okular --unique'
let g:Tex_DefaultTargetFormat = 'pdf'

"let g:pymode_python = 'python3'
" path to directory where library can be found
"let g:clang_library_path = $HOME.'/.local/clang_llvm_5.0.1/lib'
"let g:clang_user_options = '-std=c++11'

" cpp highlight enhance
let g:cpp_class_scope_highlight = 1
let g:cpp_member_variable_highlight = 1
let g:cpp_class_decl_highlight = 1
"let g:cpp_experimental_template_highlight = 1


" Ctrl-p to paste from system clipboard
noremap <C-p> "+p

" Ctrl-y to copy to system clipboard
noremap <C-y> "+y

" <leader>w for windows operation
nnoremap <leader>w <C-W>
" <leader>s for saving files
nnoremap <leader>s :w<CR>
" <leader>t for open terminal
nnoremap <leader>t :term<CR>

"" Leadf settings
nnoremap <F8> :LeaderfBufTag!<CR>
nnoremap <F2> :LeaderfFunction!<CR>
let g:Lf_ShowRelativePath = 0
let g:Lf_HideHelp = 1
let g:Lf_PreviewResult = {'Function':0, 'Colorscheme':1}

let g:Lf_NormalMap = {
    \ "File":   [["<ESC>", ':exec g:Lf_py "fileExplManager.quit()"<CR>']],
    \ "Buffer": [["<ESC>", ':exec g:Lf_py "bufExplManager.quit()"<CR>']],
    \ "Mru":    [["<ESC>", ':exec g:Lf_py "mruExplManager.quit()"<CR>']],
    \ "Tag":    [["<ESC>", ':exec g:Lf_py "tagExplManager.quit()"<CR>']],
    \ "Function":    [["<ESC>", ':exec g:Lf_py "functionExplManager.quit()"<CR>']],
    \ "Colorscheme":    [["<ESC>", ':exec g:Lf_py "colorschemeExplManager.quit()"<CR>']],
    \ }

function! Lf_rg_iw()
    let s:wordUnderCursor = expand("<cword>")
    execute "Leaderf rg -e " . s:wordUnderCursor
endfunction
cabbrev rgiw call Lf_rg_iw()
function! Lf_file_iw()
    let s:wordUnderCursor = expand("<cword>")
    execute "Leaderf file --input " . s:wordUnderCursor
endfunction
cabbrev lfiw call Lf_file_iw()
"" End Leaderf

" customized abbrev in command-line
cabbrev rd redraw!
cabbrev tbf TableFormat
" byebye spaces in the line end
cabbrev bbsp let bbspr=@/<CR>:%s/\s\+$//e<cr>:let @/=bbspr<CR>:noh<CR>
cabbrev bbspl let bbspr=@/<CR>:s/\s\+$//e<cr>:let @/=bbspr<CR>:noh<CR>

au FocusGained * :redraw!
au BufWritePost * :redraw!

" No arrow keys
map <Left> <Nop>
map <Right> <Nop>
map <Up> <Nop>
map <Down> <Nop>
" Better vertical movement in wrapped text
nnoremap k gk
nnoremap gk k
nnoremap j gj
nnoremap gj j

" double esc to set no-highlight
nnoremap <silent> <Esc><Esc> :nohl<CR>

" manual folding
" :set foldmethod=manual
let g:vim_markdown_folding_disabled = 1

" YCM
let g:ycm_add_preview_to_completeopt = 0
let g:ycm_show_diagnostics_ui = 0
let g:ycm_server_log_level = 'info'
let g:ycm_min_num_identifier_candidate_chars = 2
let g:ycm_collect_identifiers_from_comments_and_strings = 1
let g:ycm_complete_in_strings=1
" let g:ycm_key_invoke_completion = '<c-z>'
" noremap <c-z> <NOP>
set completeopt=menu,menuone


let g:ycm_semantic_triggers =  {
            \ 'c,cpp,python,java,go,erlang,perl': ['re!\w{2}'],
            \ 'cs,lua,javascript': ['re!\w{2}'],
            \ }
let g:ycm_filetype_whitelist = {
            \ "c":1,
            \ "cpp":1,
            \ "objc":1,
            \ "python":1,
            \ "js":1,
            \ "css":1,
            \ "html":1,
            \ "vim":1,
            \ "sh":1,
            \ "zsh":1,
            \ "zimbu":1,
            \ }
" highlight PMenu ctermfg=0 ctermbg=242 guifg=black guibg=darkgrey
" highlight PMenuSel ctermfg=242 ctermbg=8 guifg=darkgrey guibg=black

nnoremap <leader>jc :YcmCompleter GoToDeclaration<CR>
nnoremap <leader>jd :YcmCompleter GoToDefinition<CR>

" enable matchit plugin
runtime macros/matchit.vim

" handling cn input method, only for fcitx
" source: http://fcitx.github.io/handbook/chapter-remote.html
let g:input_toggle = 0
"" Change input method to en when leaving Insert mode
function! Fcitx2en()
    let s:input_status = system("fcitx-remote")
    if s:input_status == 2
    let g:input_toggle = 1
    let l:a = system("fcitx-remote -c")
    endif
endfunction

"" Change input method back to zh when back to Insert mode, only when we have
""  changed to en when leaving Insert mode last time
function! Fcitx2zh()
    let s:input_status = system("fcitx-remote")
    if s:input_status != 2 && g:input_toggle == 1
    let l:a = system("fcitx-remote -o")
    let g:input_toggle = 0
    endif
endfunction

set timeoutlen=300
autocmd InsertLeave * call Fcitx2en()
autocmd InsertEnter * call Fcitx2zh()
" end handling fcitx

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

" echodoc
set noshowmode
let g:echodoc#enable_at_startup = 1

" do not auto open MBE
" let g:miniBufExplorerAutoStart = 0
" nnoremap <C-Right> :MBEbn<CR>
" nnoremap <C-Left> :MBEbp<CR>

" colorscheme
set termguicolors
let g:gruvbox_guisp_fallback = "bg"
colorscheme gruvbox

" local .vimrc
if filereadable('.vimrc.local')
    source .vimrc.local
endif

