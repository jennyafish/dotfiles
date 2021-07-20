" vim-plug 
call plug#begin()
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'
Plug 'preservim/nerdtree'
Plug 'preservim/nerdcommenter'
call plug#end()

" nice color schemes
let g:airline_theme='fruit_punch'
" to access this one, download flazz/vim-colorschemes and cp ~/.vim/colors
colorscheme seattle

" shortcuts to sourcing/reloading vimrc and plugins
nnoremap ,vs :source ~/.vimrc<CR>
nnoremap ,pu :PlugUpdate<CR>
nnoremap ,pi :PlugInstall<CR>

nnoremap <C-p> :tabprev<CR>

" NERDTree
nnoremap <C-n> :NERDTreeToggle<CR>
nnoremap jk :FZF<CR> 

" add line numbers
set number

" incremental search + highlight all matches
set is hls

" enables filetype plugins for nerdcommenter
filetype plugin on

set wildmode=list:longest,longest
