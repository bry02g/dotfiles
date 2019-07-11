" use the nerd font Hack it looks hella nice and provides icons for nerdtree

call plug#begin('~/.vim/plugged')
" Initialize plugin system

" file manager sidebar
 Plug 'scrooloose/nerdtree'
 Plug 'Xuyuanp/nerdtree-git-plugin'

 " indent line guides
  Plug 'Yggdroot/indentLine'
 
  " airline bar
  Plug 'vim-airline/vim-airline'

  " Git integration
   Plug 'tpope/vim-fugitive'
  " show changes in git diff
   Plug 'airblade/vim-gitgutter'
  "
  "  fancy start screen
   Plug 'mhinz/vim-startify'

  " Ruby support
   Plug 'vim-ruby/vim-ruby'

   " adds icon support
   Plug 'ryanoasis/vim-devicons'

   " badwolf color scheme
   Plug 'sjl/badwolf'

   " base 16 color scheme
   Plug 'chriskempson/base16-vim'

   " rails plugin
   Plug 'tpope/vim-rails'

   " siera theme
   Plug 'AlessandroYorba/Sierra'

   "air line themes
   Plug 'vim-airline/vim-airline-themes'

   " icon support
   Plug 'ryanoasis/vim-devicons'

   " auto complete suport
   Plug 'ycm-core/YouCompleteMe'
   
   " Icon colors
   "Plug 'tiagofumo/vim-nerdtree-syntax-highlight'

 call plug#end()

 set encoding=UTF-8

 set number
 set termguicolors

 set background=dark

 let g:indentLine_enabled = 1

 let g:airline_powerline_fonts = 1
 " adds navigation tabs on top
  let g:airline#extensions#tabline#enabled = 1
 
  map <C-n> :NERDTreeToggle<CR>

  syntax on 

" colorscheme badwolf
"colorscheme base16-default-dark
"let g:sierra_Twilight = 1
colorscheme sierra

let g:airline_theme='tomorrow'
set t_Co=256

"allows cycling of buffers
:nnoremap <Tab> :bnext<CR>
:nnoremap <S-Tab> :bprevious<CR>

" close vim if nerdtree is only one open
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif
