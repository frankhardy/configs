These are some of the files that I use to configure my macOS and Linux
computers.
## Zsh
Download Grml's Zsh configuraion file. WARNING: This will overwrite an existing `$HOME/.zshrc` file!

```
wget -O $HOME/.zshrc http://git.grml.org/f/grml-etc-core/etc/zsh/zshrc
```

Assuming you have cloned this repository in `$HOME/src`, create soft links for the other configuration files:

```
ln -s $HOME/src/configs/.zshrc.local $HOME/.zshrc.local
ln -s $HOME/src/configs/.zshenv $HOME/.zshenv
```

## Vim
Start by installing Vundle.

```
git clone https://github.com/gmarik/Vundle.vim.git $HOME/.vim/bundle/Vundle.vim
```

Next, create a soft link for Vim's configuration file.

```
ln -s $HOME/src/configs/.vimrc $HOME/.vimrc
```

Finally, start vim and run the following:

```
:PluginInstall
```
