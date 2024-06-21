# Install oh-my-zsh
echo "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)" > ~/.oh.sh
sed -i 's/exec zsh -l//g' ~/.oh.sh
sh -c "$(cat ~/.oh.sh)"
rm ~/.oh.sh

# .zshrc.pre-oh-my-zshを.zshrcの末尾にコピー
cp ~/.zshrc ~/.zshrc.pre-zsh-init
cat ~/.zshrc.pre-oh-my-zsh >> ~/.zshrc

# clone zsh-autosuggestions
git clone https://github.com/zsh-users/zsh-autosuggestions ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-autosuggestions

# pluginにz, zsh-autosuggestionsを追加
sed -i 's/plugins=(git)/plugins=(git z zsh-autosuggestions)/' ~/.zshrc
