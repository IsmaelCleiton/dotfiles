set nocompatible
filetype on
filetype plugin on
filetype indent on
syntax on
set number
set cursorline
set shiftwidth=4
set tabstop=4
set expandtab
set wrap
set incsearch
set showmode
set showmatch
set hlsearch
set wildmenu
set wildmode=list:longest
colorscheme molokai
let g:ale_completion_enabled = 1
let g:ale_completion_autoimport = 1

"PLUG-INS ---------------------------------------------------------------- {{{
call plug#begin('~/.vim/plugged')

    Plug 'dense-analysis/ale'
    Plug 'preservim/nerdtree'
    Plug 'itchyny/lightline.vim'
    Plug 'airblade/vim-gitgutter'
    Plug 'junegunn/fzf'
    Plug 'mattn/emmet-vim'
    Plug 'terryma/vim-multiple-cursors'
    Plug 'tpope/vim-eunuch'
    Plug 'tpope/vim-surround'
    Plug 'valloric/youcompleteme'
    if has('nvim')
        Plug 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' }
    else
        Plug 'Shougo/deoplete.nvim'
        Plug 'roxma/nvim-yarp'
        Plug 'roxma/vim-hug-neovim-rpc'
    endif
    let g:deoplete#enable_at_startup = 1

call plug#end()

"}}}

"MAPEAMENTO --------------------------------------------------------------- {{{
    let mapleader = " "
    "leader.
    nnoremap <space> :
    
    "tecla de abrir/fechar o NERDTree.
    nnoremap <F3> :NERDTreeToggle<cr>

    "Tecla para abrir uma nova aba.
    nnoremap <space>t :tabnew<cr>
    
    "Tecla para fechar aba.
    nnoremap <space>x :tabclose<cr>

    noremap <leader>1 1gt
    noremap <leader>2 2gt
    noremap <leader>3 3gt
    noremap <leader>4 4gt
    noremap <leader>5 5gt
    noremap <leader>6 6gt
    noremap <leader>7 7gt
    noremap <leader>8 8gt
    noremap <leader>9 9gt
    noremap <leader>0 :tablast<CR>
"}}}

"VIMSCRIPT -------------------------------------------------------------- {{{
    "habilita folding.
    augroup filetype_vim
        autocmd!
        autocmd FileType vim setlocal foldmethod=marker
    augroup END
    "Mudar tabulação de html para 2 espaços.
    autocmd Filetype html setlocal tabstop=2 shiftwidth=2 expandtab
    
    "Exibir curso apenas na tela em foco.
    augroup cursor_off
        autocmd!
        autocmd WinLeave * set nocursorline nocursorcolumn
        autocmd WinEnter * set cursorline cursorcolumn
    augroup END

    "Habilita o desfazer mesmo após finalizar a edição do arquivo.
    if version >= 703
        set undodir=~/.vim/backup
        set undofile
        set undoreload=10000
endif
"}}}

"LINHA DE STATUS ---------------------------------------------------------- {{{

" Limpa a barra de status quando o vimrc é recarregado.
set statusline=

" Lado esquerdo da barra de status.
set statusline+=\ %F\ %M\ %Y\ %R

" Utiliza um divisor para separar o lado esquerdo do lado direito.
set statusline+=%=

" Lado direito da barra de status.
set statusline+=\ ascii:\ %b\ hex:\ 0x%B\ row:\ %l\ col:\ %c\ percent:\ %p%%

" Mostra a barra de status na penúltima linha.
set laststatus=2

"}}}


