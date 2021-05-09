" YCM
let g:ycm_add_preview_to_completeopt = 0
let g:ycm_show_diagnostics_ui = 0
let g:ycm_server_log_level = 'info'
let g:ycm_min_num_identifier_candidate_chars = 2
let g:ycm_collect_identifiers_from_comments_and_strings = 1
let g:ycm_complete_in_strings=1
let g:ycm_key_list_select_completion = ['<Down>']
let g:ycm_key_list_previous_completion = ['<Up>']
let g:ycm_clangd_binary_path = exepath("clangd")
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
nnoremap <leader>jg :YcmCompleter GoTo<CR>


