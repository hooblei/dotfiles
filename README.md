# dotfiles

Use [GNU Stow][stow] to mange included packages. See this [post][stow-dots] on
how to manage dotfiles using GNU stow.

## Activating application configs

To active the configuration for an application simply run something like this

`maresp@foo ~/dotfiles master $ stow neovim`

## Notes

Make sure the following directories exists

* `${HOME}/.config`

[stow]: https://www.gnu.org/software/stow/
[stow-dots]: http://brandon.invergo.net/news/2012-05-26-using-gnu-stow-to-manage-your-dotfiles.html
