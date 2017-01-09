set nocompatible              " be iMproved, required
filetype off                  " required
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
Plugin 'neovimhaskell/haskell-vim'
Plugin 'thinca/vim-ref'
Plugin 'awetzel/elixir.nvim'
Plugin 'elixir-lang/vim-elixir'
"Plugin 'slashmili/alchemist.vim'
Plugin 'tomasr/molokai'
Plugin 'scrooloose/nerdtree'
Plugin 'kien/ctrlp.vim'
Plugin 'terryma/vim-expand-region'
Plugin 'tpope/vim-fugitive.git'
Plugin 'airblade/vim-gitgutter.git'
Plugin 'valloric/MatchTagAlways'
Plugin 'Xuyuanp/nerdtree-git-plugin'
Plugin 'ternjs/tern_for_vim'
Plugin 'scrooloose/syntastic'
Plugin 'flowtype/vim-flow'
Plugin 'Shougo/neosnippet-snippets'
Plugin 'steelsojka/deoplete-flow'
Plugin 'ElmCast/elm-vim'
Plugin 'vim-airline/vim-airline'
Plugin 'vim-airline/vim-airline-themes'
Plugin 'carlitux/deoplete-ternjs'
Plugin 'Shougo/deoplete.nvim'
Plugin 'mxw/vim-jsx'
Plugin 'pangloss/vim-javascript'
Plugin 'Shougo/neosnippet'
"Plugin 'othree/yajs.vim'
"Plugin 'isRuslan/vim-es6'
"Plugin 'kern/vim-es7'
Plugin 'elzr/vim-json'
Plugin 'VundleVim/Vundle.vim'
call vundle#end()            " required
filetype plugin indent on    " required
syntax on
au CompleteDone * pclose!
set laststatus=2
set number
set expandtab
set cursorline
let g:min_pattern_length = 1
set autochdir
set background=dark
let g:rehash256 = 1
let g:molokai_original = 1
colorscheme molokai
let g:UltiSnipsExpandTrigger = "<C-k>"
let g:UltiSnipsJumpForwardTrigger = "<tab>"
let g:UltiSnipsJumpBackwardTrigger = "<s-tab>"
let g:airline_theme='molokai' 
let g:airline_powerline_fonts = 1 
map <C-n> :NERDTreeToggle<CR>
imap jj <Esc>
set wildmenu
let g:NERDTreeIgnore=['node_modules$[[dir]]']
let g:ctrlp_custom_ignore = {
  \ 'dir':  '\.git$\|\.yardoc\|node_modules\|log\|tmp$\|build\|android\|ios',
  \ 'file': '\.so$\|\.dat$|\.DS_Store$\|.png'
  \ }
let g:expand_region_text_objects = {
      \ 'iw'  :0,
      \ 'iW'  :0,
      \ 'i"'  :0,
      \ 'i''' :0,
      \ 'i]'  :1,
      \ 'a]'  :1,
      \ 'ib'  :1,
      \ 'ab'  :1,
      \ 'iB'  :1,
      \ 'aB'  :1,
      \ 'it'  :1,
      \ 'at'  :1,
      \ 'ip'  :0,
      \ }
let g:syntastic_always_populate_loc_list = 1
let g:syntastic_check_on_wq = 1
let g:deoplete#enable_at_startup = 1
if !exists('g:deoplete#omni#input_patterns')
  let g:deoplete#omni#input_patterns = {}
endif
imap <C-k>     <Plug>(neosnippet_expand_or_jump)
smap <C-k>     <Plug>(neosnippet_expand_or_jump)
xmap <C-k>     <Plug>(neosnippet_expand_target)
let g:elixir_showerror = 1
let g:elixir_autobuild = 1
nmap <Up> 3k
nmap <Down> 3j
nmap <Left> <C-b>
nmap <Right> <C-f>
imap <silent><expr><Tab> pumvisible() ? "\<C-n>"
	\ : (neosnippet#jumpable() ? "\<Plug>(neosnippet_jump)"
	\ : (<SID>is_whitespace() ? "\<Tab>"
	\ : deoplete#mappings#manual_complete()))

smap <silent><expr><Tab> pumvisible() ? "\<C-n>"
	\ : (neosnippet#jumpable() ? "\<Plug>(neosnippet_jump)"
	\ : (<SID>is_whitespace() ? "\<Tab>"
	\ : deoplete#mappings#manual_complete()))
"
inoremap <expr><S-Tab>  pumvisible() ? "\<C-p>" : "\<C-h>"
"
function! s:is_whitespace() "{{{
	let col = col('.') - 1
	return !col || getline('.')[col - 1]  =~? '\s'
endfunction "}}}
