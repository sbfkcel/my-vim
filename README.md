## Use

```bash
mkdir ~/.vim/ && cd ~/.vim/

git clone https://github.com/sbfkcel/my-vim.git

mv ./my-vim/vimrc ./vimrc && rm -rf ./my-vim
```

## Install

```bash
curl -fLo ~/.vim/autoload/plug.vim --create-dirs \
    https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim

vim

:PlugInstall
```

