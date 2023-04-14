Language : English | [Indonesia](./README-ID.md)

[![License: Apache](https://img.shields.io/badge/License-Apache-blue.svg)](https://opensource.org/licenses/Apache-2.0)
![Neovim version](https://img.shields.io/badge/Neovim-0.8.x-green.svg)
![Lua version](https://img.shields.io/badge/Lua-5.4-yellow.svg)
[![Repo Size](https://img.shields.io/github/repo-size/muryp/nvim-muryp-telescope-bookmark)](https://github.com/muryp/nvim-muryp-telescope-bookmark)
[![Downloads](https://img.shields.io/github/downloads/muryp/nvim-muryp-telescope-bookmark/total)](https://github.com/muryp/nvim-muryp-telescope-bookmark/releases)
[![Latest Release](https://img.shields.io/github/release/muryp/nvim-muryp-telescope-bookmark)](https://github.com/muryp/nvim-muryp-telescope-bookmark/releases/latest)
[![Last Commit](https://img.shields.io/github/last-commit/muryp/nvim-muryp-telescope-bookmark)](https://github.com/muryp/nvim-muryp-telescope-bookmark/commits/master)
[![Open Issues](https://img.shields.io/github/issues/muryp/nvim-muryp-telescope-bookmark)](https://github.com/muryp/nvim-muryp-telescope-bookmark/issues)

# nvim-muryp-telescope-bookmark
nvim-muryp-telescope-bookmark is a plugin for the Neovim text editor that allows users to search for folders or files that have been bookmarked previously, with the help of the Telescope plugin. This plugin enables users to save a list of bookmarked folders or files that are frequently used, and then perform quick and efficient searches using the Telescope search feature.
## Instalasi
### Use Packer
Add the following line to your Packer configuration:
```lua
use { 'muryp/nvim-muryp-telescope-bookmark', after=    'nvim-telescope/telescope.nvim' }
```
## Setup
After installing the plugin, you need to do some configuration in your Neovim. Here is an example configuration:
```lua
local plug      = require('telescope.builtin')
local workspace = require('muryp-bookmark')
workspace.setup({
  list = {
    muryp = "~/web/muryp",
    vim = "~/.config/nvim",
  },
  option = {
    treeOpen = 'lua _G.TreeOpenNow()',
    telescope = 'Telescope find_files'
  }
})
plug.work_space = workspace.picker
```
## Penggunaan
After configuring, you can use the nvim-muryp-telescope-bookmark plugin as follows:
- Type `:Telescope` workspace in the command prompt in Neovim, then press `enter`.
- Choose or search for the folder or file you want to open.
- Press `enter` to proceed.
- Press `ctrl-back` to go back in insert mode, or `back` in normal mode.
- Finally, choose the command to execute and `enter`.

## Lisensi
The `nvim-muryp-git` plugin is distributed under the **Apache License 2.0**. Please refer to the `LICENSE` file for more information about this license.

## Contributing
We greatly appreciate contributions from anyone can produce **issue** or **maintaine code** to help this repo. Please read `CONTRIBUTE.md` for more info.
