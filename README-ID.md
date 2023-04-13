[![Repo Size](https://img.shields.io/github/repo-size/muryp/nvim-muryp-telescope-bookmark)](https://github.com/muryp/nvim-muryp-telescope-bookmark)
[![Downloads](https://img.shields.io/github/downloads/muryp/nvim-muryp-telescope-bookmark/total)](https://github.com/muryp/nvim-muryp-telescope-bookmark/releases)
[![Latest Release](https://img.shields.io/github/release/muryp/nvim-muryp-telescope-bookmark)](https://github.com/muryp/nvim-muryp-telescope-bookmark/releases/latest)
[![Last Commit](https://img.shields.io/github/last-commit/muryp/nvim-muryp-telescope-bookmark)](https://github.com/muryp/nvim-muryp-telescope-bookmark/commits/master)
# nvim-muryp-telescope-bookmark
bookmark your folder or file and find with telescope

nvim-muryp-telescope-bookmark adalah plugin untuk editor teks Neovim yang digunakan untuk mencari folder atau file yang sudah di-setup sebelumnya dengan bantuan plugin Telescope. Plugin ini memungkinkan pengguna untuk menyimpan daftar bookmark folder atau file yang sering digunakan, dan kemudian melakukan pencarian cepat dan efisien menggunakan fitur pencarian Telescope.

## Instalasi

### Menggunakan Packer

Tambahkan baris berikut di konfigurasi Packer Anda:
```lua
use { 'muryp/nvim-muryp-telescope-bookmark', after=    'nvim-telescope/telescope.nvim' }
```
## Setup
Setelah menginstal plugin, Anda perlu melakukan beberapa konfigurasi pada Neovim Anda. Berikut adalah contoh konfigurasi:
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
Setelah melakukan konfigurasi, Anda dapat menggunakan plugin nvim-muryp-telescope-bookmark dengan cara sebagai berikut:

- ketik di cmd nvim `:Telescope workspace` lalu tekan enter
- pilih atau cari mana yang mau dibuka
- tekan `enter` untuk melanjutkan
- tekan `ctrl-back` untuk kembali di mode insert dan `back` di mode normal
- terakhir, pilih cmd yang akan di eksekusi

## Lisensi
Plugin nvim-muryp-telescope-bookmark didistribusikan dengan lisensi Apache License 2.0. Silakan merujuk ke berkas `LICENSE` untuk informasi lebih lanjut mengenai lisensi ini.
