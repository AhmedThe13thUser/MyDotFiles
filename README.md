<font size="3">

# What is this?

This is my Dot File

# Why?

When Moving Devices You Want To Feel Like Home Instantly, am I right?

# How To install?

<font size="5">run a few commands!</font>

```bash
sudo apt install neovim zsh git curl -y

yes | sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
SHELL=/usr/bin/zsh
git clone https://github.com/AhmedThe13thUser/MyDotFiles.git
sudo rm -rf ~/.config
sudo rm -rf ~/.zshrc
sudo rm -rf ~/.gitconfig

sudo cp -r ./.config/ ~/.config/
sudo cp -r ./.zshrc ~/.zshrc
sudo cp -r ./.gitconfig ~/.gitconfig

git clone https://github.com/zsh-users/zsh-autosuggestions ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-autosuggestions

git clone https://github.com/zsh-users/zsh-syntax-highlighting.git ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-syntax-highlighting
```

And just source the nvim packer thing at ~/.config/nvim/init.lua

```bash
nvim ~/config/nvim/init.lua
```

# How do I uninstall zsh?

```bash
SHELL=/bin/bash
rm -rf /root/.oh-my-zsh/ /root/.zsh*
```

<font size = "7">and live life!</font>

</font>
