# wonderfulfrog's Neovim configuration

Uses [lazy.nvim][lazynvim] to manage plugins.

It's pretty opinionated. You might not like it.

## Installation

1. Clone this repo into Neovim's config folder.
2. Run Neovim.
3. Wait for everything to install.

# Post Installation

- `vale` requires a configuration file to work. [Make sure one is present][valeconfig]. You may also need to run `vale sync` after adding it (if installed using Mason, make sure to run the binary installed by Mason and not the global one, if present).

[lazynvim]: https://github.com/folke/lazy.nvim
[valeconfig]: https://vale.sh/docs/topics/config/#global-configuration
