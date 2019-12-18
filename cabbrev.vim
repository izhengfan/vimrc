" customized abbrev in command-line
cabbrev rd redraw!
cabbrev tbf TableFormat
" byebye spaces in the line end
cabbrev bbsp let bbspr=@/<CR>:%s/\s\+$//e<cr>:let @/=bbspr<CR>:noh<CR>
cabbrev bbspl let bbspr=@/<CR>:s/\s\+$//e<cr>:let @/=bbspr<CR>:noh<CR>


