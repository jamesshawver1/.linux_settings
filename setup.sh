curr_dir=`pwd`
cd $HOME
sudo apt-get install -y vim
rm -f .profile .vimrc .bashrc
ln -s $curr_dir/profile .profile
ln -s $curr_dir/vimrc .vimrc
ln -s $curr_dir/bashrc .bashrc
echo "remember to run :PluginInstall within vim"
