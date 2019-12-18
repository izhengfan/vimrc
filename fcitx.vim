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

autocmd InsertLeave * call Fcitx2en()
autocmd InsertEnter * call Fcitx2zh()
" end handling fcitx

