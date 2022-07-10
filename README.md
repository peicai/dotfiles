dotfiles
===============

Setup
-----

To set up the `dotfiles` run the appropriate snippet in the terminal:

| OS | Snippet |
|:---|:---|
| `macOS` | `bash -c "$(curl -LsS https://raw.github.com/peicai/dotfiles/master/src/os/setup.sh)"` |

Customize
---------

### Local Settings

The `dotfiles` can be easily extended to suit additional local
requirements by using the following files:

Local or sensitive info can be stored
under `~/.bash.local`, `~/.gitconfig.local` and `~/.vimrc.local`
after installing. `*local` file will be automatically sourced.

Update
------

To update the dotfiles you can either run the [`setup` script](src/os/setup.sh)
or, if you want to update one particular part, run the appropriate
[`os` script](src/os).
