SCRIPT=$(realpath $0)
SCRIPTPATH=`dirname $SCRIPT`

pushd $SCRIPTPATH

echo "set runtimepath+=$SCRIPTPATH

source $SCRIPTPATH/vimrcs/basic.vim
source $SCRIPTPATH/vimrcs/filetypes.vim
source $SCRIPTPATH/vimrcs/plugins_config.vim
source $SCRIPTPATH/vimrcs/extended.vim

try
source $SCRIPTPATH/my_configs.vim
catch
endtry" > ~/.vimrc

echo "Installed the Ultimate Vim configuration successfully! Enjoy :-)"
popd
