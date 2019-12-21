"" Leadf settings
let g:Lf_ShowRelativePath = 0
" let g:Lf_PreviewResult = {'Function':0, 'Colorscheme':1}
" don't show the help in normal mode
let g:Lf_HideHelp = 1
let g:Lf_UseCache = 0
let g:Lf_UseVersionControlTool = 0
let g:Lf_IgnoreCurrentBufferName = 1
" popup mode
let g:Lf_WindowPosition = 'popup'
let g:Lf_PreviewInPopup = 1
let g:Lf_StlSeparator = { 'left': "\ue0b0", 'right': "\ue0b2", 'font': "DejaVu Sans Mono for Powerline" }
let g:Lf_PreviewResult = {'Function': 0, 'BufTag': 0 }

let g:Lf_NormalMap = {
    \ "File":   [["<ESC>", ':exec g:Lf_py "fileExplManager.quit()"<CR>']],
    \ "Buffer": [["<ESC>", ':exec g:Lf_py "bufExplManager.quit()"<CR>']],
    \ "BufTag": [["<ESC>", ':exec g:Lf_py "bufTagExplManager.quit()"<CR>']],
    \ "Mru":    [["<ESC>", ':exec g:Lf_py "mruExplManager.quit()"<CR>']],
    \ "Tag":    [["<ESC>", ':exec g:Lf_py "tagExplManager.quit()"<CR>']],
    \ "Function":    [["<ESC>", ':exec g:Lf_py "functionExplManager.quit()"<CR>']],
    \ "Colorscheme":    [["<ESC>", ':exec g:Lf_py "colorschemeExplManager.quit()"<CR>']],
    \ }

" search in all project files for word under cursor
function! Lf_rg_iw()
    let s:wordUnderCursor = expand("<cword>")
    execute "Leaderf rg -e " . s:wordUnderCursor
endfunction
cabbrev rgiw call Lf_rg_iw()

" search file names for word under cursor
function! Lf_file_iw()
    let s:wordUnderCursor = expand("<cword>")
    execute "Leaderf file --nameOnly --input " . s:wordUnderCursor
endfunction
cabbrev lfiw call Lf_file_iw()

" search file names for word identitcal to current file, useful for C++ header/source switch
function! Lf_file_cf()
    execute "Leaderf! file --nameOnly --input " . expand("%:t:r")
endfunction
cabbrev lfcf call Lf_file_cf()

"" End Leaderf

