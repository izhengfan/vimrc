curl -fLo ~/.vim/autoload/plug.vim --create-dirs \
        https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
cp .vimrc ~/.vimrc
pip3 install --user pygments
wget http://tamacom.com/global/global-6.6.2.tar.gz
tar -xf global-6.6.2.tar.gz
cd global-6.6.2/
sudo apt install libncurses5-dev
./configure
make
sudo make install
mkdir -p ~/.vim/plugin
cp /usr/local/share/gtags/gtags.vim ~/.vim/plugin/
cp /usr/local/share/gtags/gtags-cscope.vim ~/.vim/plugin/
cd ..
wget https://raw.githubusercontent.com/skywind3000/vim/master/plugin/gutentags_plus.vim
mv gutentags_plus.vim ~/.vim/plugin
vim +PlugInstall +qall
sudo apt install exuberant-ctags
cd ~/.vim/plugged/YouCompleteMe
./install.py --clang-completer
cd ~/.vim/plugged/LeaderF
./install.sh
