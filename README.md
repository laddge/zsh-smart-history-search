# zsh-smart-history-search
https://user-images.githubusercontent.com/67098414/153707253-89ae7463-d6ec-4d17-9301-8841049321fa.mp4

## Installation
```
mkdir -p ~/.zsh
git clone https://github.com/laddge/zsh-smart-history-search ~/.zsh/zsh-smart-history-search
```
add to ```~/.zshrc```
```
if [ -f ~/.zsh/zsh-smart-history-search/zsh-smart-history-search.zsh ]; then
    source ~/.zsh/zsh-smart-history-search/zsh-smart-history-search.zsh
    bindkey "^[[A" zsh-smarths-backward
    bindkey "^[[B" zsh-smarths-forward
fi
```

## Licence
This source is under the MIT-License.

See also [LICENSE](LICENSE).

## Author
Laddge
