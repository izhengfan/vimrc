sudo add-apt-repository ppa:jonathonf/vim
sudo apt update
sudo apt install vim vim-gtk3

sudo apt install curl
curl -fLo ~/.vim/autoload/plug.vim --create-dirs \
        https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
{ echo "source "; pwd; echo "/.vimrc"; } | sed ':a;N;s/\n//;ba' >> ~/.vimrc
pip3 install --user pygments

wget https://ftp.gnu.org/pub/gnu/global/global-6.6.3.tar.gz
tar -xf global-6.6.3.tar.gz
cd global-6.6.3/
sudo apt install libncurses5-dev
./configure
make
sudo make install

mkdir -p ~/.vim/plugin
cp /usr/local/share/gtags/gtags.vim ~/.vim/plugin/
cp /usr/local/share/gtags/gtags-cscope.vim ~/.vim/plugin/
cd ..
# wget https://raw.githubusercontent.com/skywind3000/vim/master/plugin/gutentags_plus.vim
# mv gutentags_plus.vim ~/.vim/plugin

vim +PlugInstall +qall

git clone https://github.com/universal-ctags/ctags --depth=1
cd ctags
./autosetup.sh
./configure
make
sudo make install
cd ..

curl -LO https://github.com/BurntSushi/ripgrep/releases/download/0.10.0/ripgrep_0.10.0_amd64.deb
sudo dpkg -i ripgrep_0.10.0_amd64.deb

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
