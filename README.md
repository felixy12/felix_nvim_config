# felix_nvim_config
Set up of all Neovim stuff for me. Also includes a binary of neovim in the repo. Heavily inspired by ThePrimeagen's video: https://www.youtube.com/watch?v=w7i4amO_zaE.

## Installation procedure:
1. Create repository `~/.config`
2. Clone this repo into `~./config` and rename it to `nvim`.
3. Copy the following alias into the `.bashrc`: `alias vi='~/.config/nvim/nvim.appimage'` and source the file
4. Install neovim packer: 
   ```
   git clone --depth 1 https://github.com/wbthomason/packer.nvim\
   ~/.local/share/nvim/site/pack/packer/start/packer.nvim
   ```
5. Install all plugins using Packer. open `~.config/nvim/lua/felix_settings/packer.lua` with `vi`. 
Note that this is gonna give you a ton of errors. Ignore those. In the editor (normal mode), type `:so<Enter>` then `:PackerSync`. This will install all plugins.
6. Install `ripgrep` with `sudo apt-get install ripgrep` for `telescope`.
7. Install python language servers. In neovim, type `:Mason<Enter>`, and in the `LSP` tab, install `jedi-language-server` and `python-lsp-server`. Install by hovering and pressing `i`.
   
## Useful Tips
Note: the Leader key is mapped to the space bar.
### File Navigation
The root directory of all file navigation is the directory that neovim was opened in.
1. `Nerdtree`: Opening neovim without specifying a file will by default open up NERDTree for file navigation. Typing `<Leader>nt` toggles the NERDTree menu.
2. `Telescope`: Open fuzzy file search with command `<Leader>pf`. Search for keywords within all files with command `<Leader>ps`.
3. Misc Remaps: To go back to the previous file opened (in the same neovim session), type `<Leader>bf`. To list all files opened in session, type `<Leader>lf` and then jump to desired file using the index.

### Language Server
More hotkeys are given here: https://github.com/VonHeikemen/lsp-zero.nvim
1. Any time you open a new file type, you will be prompted to install the language server for the file type.
2. The installed python language server comes with pyflake and linting.
3. To "hover" , move cursor to desired location and press `K`.
4. Jump to definition with `gd`. This, combined with the Misc Remaps specified above, allows for very fast file navigation.
5. For any warnings or errors, hover over the line and press `gl`.

### Within-File Navigation
1. `EasyMotion`: Pressing `<Leader><Leader><movement key>` to select how many times you want to use the movement key.
2. Move up and down half a page with `Ctrl-u` and `Ctrl-d` (where `-` means holding down the key).

### Unused Functions
1. `Harpoon`: "Harpoon" any file with `<Leader>a`. Open window of "harpooned" files with `Ctrl-e`, and go to the file with the number index. I prefer the Misc Remaps.
2. `UndoTree`: Fancier file change tracker. Toggle the menu with `<Leader>u`. It's pretty sweet, but I'm too lazy to learn it.
