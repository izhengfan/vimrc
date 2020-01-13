vimrc
---

Personal vim config.

---

### Tips

`:<c-f>`, `q:`: view command history in a window

`<c-z>` to hang vim in the background and return to terminal; `fg` in terminal to return back to vim.

`:qa` to quit all windows

`:%s/xxx/yyy/g` to search and replace all xxx to yyy

`:sp` to split into two windows; `:vsp` to split in vertical

`.` to repeat last change

`di"` delete contents in between a pair of " symbol. `di(` `di[`  are similar. 

`:reg` to view all register contents

`"3p` to paste contents from register 3

`"3y` to copy to register 3

`"+y` and `"+p` to copy and paste from/to the system clipboard

`:args ./src/*.cc | argdo execute "normal gg=G" | update` : auto-indent all `*.cc` files in `./src/` and save
