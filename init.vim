" specify a directory for plugins
" - For Neovim: ~/.local/share/nvim/plugged
" - Avoid using standard Vim directory names like 'plugin'
call plug#begin('~/.local/share/nvim/plugged')

" Make sure you use single quotes

" Shorthand notation; fetches https://github.com/junegunn/vim-easy-align
Plug 'junegunn/vim-easy-align'

" file manager sidebar
Plug 'scrooloose/nerdtree'
Plug 'Xuyuanp/nerdtree-git-plugin'

" gruvbox retro theme
Plug 'morhetz/gruvbox'

" indent line guides
Plug 'Yggdroot/indentLine'

" airline bar
Plug 'vim-airline/vim-airline'

" Git integration
Plug 'tpope/vim-fugitive'
" show changes in git diff
Plug 'airblade/vim-gitgutter'

" fancy start screen
Plug 'mhinz/vim-startify'

" typescript syntax
Plug 'leafgarland/typescript-vim'

" dart plugin
Plug 'dart-lang/dart-vim-plugin'

" elixir support
Plug 'elixir-editors/vim-elixir'

" Mix formatter
Plug 'mhinz/vim-mix-format'

" Ruby support
Plug 'vim-ruby/vim-ruby'

" Sinatra support
Plug 'hallison/vim-ruby-sinatra'

" Code completion
Plug 'Valloric/YouCompleteMe'

" haml support
Plug 'tpope/vim-haml'

" Css color sample
Plug 'ap/vim-css-color'

" Sass syntax
Plug 'cakebaker/scss-syntax.vim'

" Syntax checker
Plug 'vim-syntastic/syntastic'

" python pep 8 
Plug 'nvie/vim-flake8'

" adds icon support
Plug 'ryanoasis/vim-devicons'

" Elm support
Plug 'ElmCast/elm-vim'

" R support
Plug 'jalvesaq/Nvim-R'

" Papaya color them
Plug 'henrynewcomer/vim-theme-papaya'

" Srcery color scheme
Plug 'srcery-colors/srcery-vim'

" badwolf color scheme
Plug 'sjl/badwolf'

" apprentice color scheme
Plug 'romainl/Apprentice'

" Initialize plugin system
call plug#end()

set number
set termguicolors

set background=dark    " Setting dark mode

"colorscheme papaya
"colorscheme srcery
"colorscheme apprentice

colorscheme gruvbox
let g:gruvbox_contrast_dark = 'hard'
" Make the gutters darker than the background.
"let g:badwolf_darkgutter = 1
" Make the gutters darker than the background.
"let g:badwolf_darkgutter = 1

set tabstop=4
set softtabstop=4
set shiftwidth=4
set textwidth=79
set expandtab
set autoindent

let g:indentLine_enabled = 1

let g:airline_powerline_fonts = 1
" adds navigation tabs on top
let g:airline#extensions#tabline#enabled = 1

map <C-n> :NERDTreeToggle<CR>

inoremap ( ()<c-g>U<left>
inoremap { {}<c-g>U<left>
inoremap [ []<c-g>U<left>
inoremap ' ''<c-g>U<left>
nnoremap " ""<c-g>U<left>


let python_highlight_all=1
syntax on 

" flags extra space
au BufRead,BufNewFile *.py,*.pyw,*.c,*.h match BadWhitespace /\s\+$/

" friendlier syntax checking setting
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 1

let g:elm_syntastic_show_warnings = 1

let g:ycm_semantic_triggers = {
     \ 'elm' : ['.'],
     \}
