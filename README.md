### Manage dotfiles with GNU stow

* In dotfiles folder make symlinks to $HOME directory by `stow <folder>`, e.g. `stow bash`
* Remove symlinks by `stow -D <folder>`, e.g. `stow -D bash`
