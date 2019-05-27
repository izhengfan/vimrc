cd ~/.vim/plugged/YouCompleteMe
./install.py --clang-completer
cd ~/.vim/plugged/LeaderF
./install.sh

echo "let g:gruvbox_guisp_fallback = \"bg\"" >> ~/.vimrc
echo "colorscheme gruvbox" >> ~/.vimrc
echo "set clipboard^=unnamedplus" >> ~/.vimrc
echo "\"let g:ycm_server_python_interpreter = '/usr/bin/python2'" >> ~/.vimrc
cp .ycm_extra_conf.py ~/.ycm_extra_conf.py
echo "let g:ycm_global_ycm_extra_conf='~/.ycm_extra_conf.py'" >> ~/.vimrc
