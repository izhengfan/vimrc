" Ctrl-l as ESC in insert mode
inoremap <C-l> <Esc>
" Ctrl-p to paste from system clipboard
noremap <C-p> "+p
" Ctrl-y to copy to system clipboard
noremap <C-y> "+y
" <leader>w for windows operation
nnoremap <leader>w <C-W>
" <leader>s for saving files
nnoremap <leader>s :w<CR>

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

" leader-esc to set clear highlight
nnoremap <silent> <leader><Esc> :nohl<CR>

" for leaderf
nnoremap <F8> :LeaderfBufTag!<CR>
nnoremap <F3> :LeaderfFunction!<CR>
nnoremap <F4> :call Lf_file_cf()<CR>
nnoremap <leader>rg :call Lf_rg_iw()<CR>

" nerdtree
nnoremap <C-n> :NERDTreeToggle<CR>

" for termdebug
au FileType c,cpp nnoremap <F9> :Break<CR>
au FileType c,cpp nnoremap <leader><F9> :Clear<CR>
au FileType c,cpp nnoremap <F5> :Continue<CR>
au FileType c,cpp nnoremap <leader><F5> :Run<CR>
au FileType c,cpp nnoremap <F10> :Over<CR>
au FileType c,cpp nnoremap <F11> :Step<CR>
au FileType c,cpp nnoremap <leader><F11> :Finish<CR>
