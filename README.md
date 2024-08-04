# cool-syntax-highlight.vim

A simple basic syntax highlighting plugin for the lenguage COOL (Classroom Object Oriented Language).

## Installation

### Making Vim recognize cool files
Since Cool is a small and not very popular language (because it is mostly used for educational purposes), it is very likely that Vim may not recognize Cool file types. So, we'll add them first.

```bash
#Adding ftdetect folder inside the .vim directory
mkdir -p ~/.vim/ftdetect/ 

#Adding .cl file type
cd ~/.vim/ftdetect/
echo "au BufRead,BufNewFile *.cl set filetype=cl" >> cool.vim
```

Add file type detection to the '.vimrc' file
```vim
set filetype
```
And now it's ready to install the plugin.

### Plugin installation

For vim-plug add the next command to your '.vimrc' file
```vim
Plug 'EJ-PJ/cool-highlight-syntax.vim'
```

For other plugin managers it should be installed in the manner they require







