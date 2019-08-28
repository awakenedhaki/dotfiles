#! /usr/bin/env bash

xcode-select --install

# Install Homebrew
/usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"

# ===========================================
declare -a taps=(
	'caskroom/cask'
	'homebrew/cask-versions'
	'caskroom/fonts'
	'sambadevi_/powerline9k'
	'homebrew/bundle'
	'homebrew/core'
)

for tap in "${taps[@]}"; do
  brew tap "$tap"
done

brew upgrade && brew update

# ===========================================
brew install cask

declare -a cask_apps=(
	'google-chrome'
	'iterm2-nightly' 
	'postman'
	'spectacle'
	'skype'
	'slack'
	'font-hack-nerd-font'
	'chromdriver'
	'visual-studio-code'
	'procressing'
	'minecraft'
	'mysqlworkbench'
	'mysql-connector-python'
	'typora'
	'github'
	'openinterminal'
	'jupyter-notebook-viewer'
	'numi'
	'airpass'
	'rstudio'
)

for app in "${cask_apps[@]}"; do
  brew cask install "$app"
done

# ===========================================
brew install mas

declare -a mas_apps=(
	'409183694'  # com.apple.iWork.Keynote (9.0)
	'409201541'  # com.apple.iWork.Pages (8.0)
	'409203825'  # com.apple.iWork.Numbers (6.0)
	'1176895641' # com.readdle.smartemail-Mac (2.3.2)
	'1167193104' # CSView (1.3.3)
)

for app in "${mas_apps[@]}"; do
  mas install "$app"
done

# ===========================================
declare -a brew_app=(
	'bash'
	'mysql'
	'speedtest-cli',
	'tree'
	'htop'
	'neovim'
	'vim'
	'ctags'
	'powerlevel9k'
	'pandoc'
	'git'
	'neofetch'
	'bat'
	'geckodriver'
	'node'
	'python3'
	'tig'
	'r'
)

for app in "${brew_apps[@]}"; do
  brew install "$app"
done

# ===========================================
curl https://bootstrap.pypa.io/get-pip.py -o get-pip.py
python get-pip.py
rm get-pip.py

pip install -U pip

pip install bpython
pip install -U radian

declare -a pip_libraries=(
	'bpython'
	'radian'
	'neovim'
	'requests'
	'beautifulsoup4'
	'selenium'
	'numpy'
	'scikit-learn'
	'pandas'
	'yapf'
	'autopep8'
)

for library in "${pip_libraries[@]}"; do
  pip install "$library"
done
# ===========================================

# ===========================================
brew install zsh zsh-completions zsh-autosuggestions zsh-syntax-highlighting
sh -c "$(curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"

# ===========================================
npm install -g prettier
npm install -g googleapis
npm install -g gtop

# ===========================================
# tmux plug in manager
git clone https://github.com/tmux-plugins/tpm ~/.tmux/plugins/tpm

# ===========================================
# Install vim-plug for neovim
curl -fLo ~/.local/share/nvim/site/autoload/plug.vim --create-dirs \
    https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim

# oh-my-zsh plugins
git clone https://github.com/zsh-users/zsh-syntax-highlighting.git ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-syntax-highlighting
git clone https://github.com/zsh-users/zsh-autosuggestions ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-autosuggestions
git clone https://github.com/zsh-users/zsh-completions ${ZSH_CUSTOM:=~/.oh-my-zsh/custom}/plugins/zsh-completions
