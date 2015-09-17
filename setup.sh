curr_dir=`pwd`
cd $HOME
rm -f .profile .vimrc .bashrc
ln -s $curr_dir/profile .profile
ln -s $curr_dir/vimrc .vimrc
ln -s $curr_dir/bashrc .bashrc


