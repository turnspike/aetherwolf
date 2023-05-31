# :wolf: ætherwolf

_glide through shell like a predator._

ætherwolf is a modular zsh configuration. Tricked out and optimized for comfort. The end goal of this configuration is to have every zsh setting categorized and commented as a learning resource (still a work in progress).

# :nut_and_bolt: installing

All installation steps are non-destructive; they tap into your existing configuration files, or create stubs if you have none. Recommended terminal color theme is [Gruvbox Dark](https://github.com/morhetz/gruvbox-contrib).

    mkdir -p ~/.config                                                                           # create .config dir if needed
    git clone https://github.com/turnspike/aetherwolf.git ~/.config/aetherwolf                   # wolf it up
    brew install exa fzf chruby rbenv                                                                 # install homebrew dependencies
    # sudo apt install zsh exa fzf chruby # for Ubuntu Linux
    /usr/local/opt/fzf/install                                                                   # install fzf autocomplete (recommended options - enable fuzzy: yes, enable bindings: yes, update shell cfg: no)
    touch ~/.zshenv && echo -e "source ~/.config/aetherwolf/zsh/environment.zsh" >> ~/.zshenv    # tap into zsh env config
    touch ~/.zshsrc; echo -e "export ZCONF=~/.config/aetherwolf/zsh" >> ~/.zshrc; echo -e "" >> ~/.zshrc
    source ~/.zshrc;                                                                             # reload zsh config
    source $ZCONF/init.zsh && echo -e "source $ZCONF/init.zsh" >> ~/.zshrc                       # tap into zsh main config


# :link: key binds

|Key Binding|Description|
|---|---|
|<kbd>alt</kbd> + <kbd>c</kbd>|Fuzzy search in subdirectories|
|<kbd>ctrl</kbd> + <kbd>r</kbd>|Fuzzy search history|
|appname <kbd>ctrl</kbd> + <kbd>t</kbd>|Fuzzy open file eg vim <kbd>ctrl</kbd> + <kbd>t</kbd> html|

# :shell: shell helpers
List shell aliases:
```sh
alias
```
# :card_index_dividers: git aliases
* TBC

# :spiral_notepad: TODO
* Streamline installer script as per [ninjarc](https://github.com/turnspike/ninjarc)
* Add screenshot of shell appearance
