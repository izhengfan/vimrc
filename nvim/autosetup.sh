sudo apt update
sudo apt install curl
curl -fLo ~/.vim/autoload/plug.vim --create-dirs \
        https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
{ echo "source "; pwd; echo "/../.vimrc"; } | sed ':a;N;s/\n//;ba' >> ~/.vimrc

pip3 install --user pygments neovim
pip2 install --user neovim

mkdir -p ~/.config/nvim
cp init.vim ~/.config/nvim/init.vim

wget http://tamacom.com/global/global-6.6.2.tar.gz
tar -xf global-6.6.2.tar.gz
cd global-6.6.2/
sudo apt install libncurses5-dev xclip
./configure
make
sudo make install

mkdir -p ~/.vim/plugin
cp /usr/local/share/gtags/gtags.vim ~/.vim/plugin/
cp /usr/local/share/gtags/gtags-cscope.vim ~/.vim/plugin/
cd ..
wget https://raw.githubusercontent.com/skywind3000/vim/master/plugin/gutentags_plus.vim
mv gutentags_plus.vim ~/.vim/plugin

nvim +PlugInstall +qall

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
