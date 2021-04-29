Plug 'Valloric/YouCompleteMe'
Plug 'https://gitee.com/izhengfan/nerdtree', { 'on':  'NERDTreeToggle' }
Plug 'Shougo/echodoc.vim'
Plug 'vim-scripts/ShowTrailingWhitespace'
Plug 'easymotion/vim-easymotion'
Plug 'NLKNguyen/papercolor-theme'
Plug 'ludovicchabant/vim-gutentags'
Plug 'iamcco/mathjax-support-for-mkdp'
Plug 'iamcco/markdown-preview.vim'
Plug 'flazz/vim-colorschemes'
Plug 'majutsushi/tagbar'
Plug 'Rip-Rip/clang_complete'
Plug 'davidhalter/jedi-vim'
Plug 'python-mode/python-mode'
Plug 'fholgado/minibufexpl.vim'
Plug 'gerw/vim-latex-suite', {'for': ['tex', 'latex']}
Plug 'https://gitee.com/izhengfan/ale', {'for': ['c', 'cpp'] }

"
" echodoc
set noshowmode
let g:echodoc#enable_at_startup = 1

" do not auto open MBE
" let g:miniBufExplorerAutoStart = 0
" nnoremap <C-Right> :MBEbn<CR>
" nnoremap <C-Left> :MBEbp<CR>

" for vim-latex-suite
let g:Tex_UseMakefile = 0
let g:Tex_CompileRule_pdf = 'latexmk -f -pdf -src-specials --synctex=1 --interaction=nonstopmode $*'
let g:Tex_ViewRule_pdf = 'okular --unique'
let g:Tex_DefaultTargetFormat = 'pdf'
"
" ALE settings
let g:ale_linters = {  'cpp': ['cppcheck'] }
let g:ale_lint_on_insert_leave = 0
let g:ale_set_loclist = 0
let g:ale_set_quickfix = 1

