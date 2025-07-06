let
    colorscheme = "github_dark";
in
{
    programs.neovim = {
      enable = true;

      extraConfig =
      "
      set number
      set relativenumber
      set smarttab
      set nocompatible
      filetype on
      filetype plugin on
      syntax on
      set cursorline
      set shiftwidth=4
      set tabstop=4
      set completeopt=menuone

      nnoremap <C-f> :NERDTreeFind<CR>
      nnoremap <C-r> :NERDTreeToggle<CR>

      colorscheme ${colorscheme}
      ";
    };

    imports = [
      ./plugins.nix
      ./coc.nix
    ];
}
