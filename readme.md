dotfiles managed using [GNU Stow](https://www.gnu.org/software/stow/)

instructions

```sh
git clone git@github.com:pavanjadhaw/dotfiles.git
cd dotfiles
stow zsh -t ~/ # this will symlink zsh rc files to ~/
stow -D zsh -t ~/ # to unstow or remove symlink
```
