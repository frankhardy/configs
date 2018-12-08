" Portions of this were copied from https://realpython.com/vim-and-python-a-match-made-in-heaven and https://github.com/j1z0/vim-config/blob/master/vimrc

set nocompatible            " required
filetype off                " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'gmarik/Vundle.vim'

" Add all your plugins after this line

" Color schemes
Plugin 'altercation/vim-colors-solarized'

" All of your Plugins must be added before the following line
call vundle#end()           " required
filetype plugin indent on   " required

" Make it pretty
"set background=light
colorscheme solarized

" Turn on line numbering
set number

" Python with virtualenv support
py << EOF
import os.path
import sys
import vim
if 'VIRTUA_ENV' in os.environ:
  project_base_dir = os.environ['VIRTUAL_ENV']
  sys.path.insert(0, project_base_dir)
  activate_this = os.path.join(project_base_dir,'bin/activate_this.py')
  execfile(activate_this, dict(__file__=activate_this))
EOF

"------------Start Python PEP 8 stuff------------
" Number of spaces that a pre-existing tab is equal to
set tabstop=4

" Spaces for indents
set expandtab

" Set the default file encoding to UTF-8
set encoding=utf-8

" Full syntax highlighting
syntax enable
"------------Stop python PEP 8 stuff-------------

