" init.vim
" Author: Gabriel S. R. <gabrielschri@gmail.com>

set nocompatible              " be iMproved, required
filetype off                  " required
call plug#begin('~/.vim/plugged')
" @ Plugs  {{{
" - Editor Aesthetics {{{
Plug 'ryanoasis/vim-devicons'
Plug 'morhetz/gruvbox'
Plug 'altercation/vim-colors-solarized'
Plug 'itchyny/lightline.vim'
Plug 'itchyny/lightline-powerful'
Plug 'Raimondi/delimitMate'
Plug 'nelstrom/vim-markdown-folding'
Plug 'michalliu/sourcebeautify.vim'
Plug 'nathanaelkane/vim-indent-guides'
Plug 'scrooloose/nerdtree'
Plug 'airblade/vim-gitgutter'
" }}}
" - Search {{{
Plug 'ctrlpvim/ctrlp.vim'
Plug 'mileszs/ack.vim'
Plug 'haya14busa/incsearch.vim'
"   }}}
" - Snippets {{{
Plug 'SirVer/ultisnips'
" }}}
" - Yanking {{{
Plug 'maxbrunsfeld/vim-yankstack'
" }}}
" - Text Objects {{{
Plug 'kana/vim-textobj-user'
Plug 'tpope/vim-fugitive'
Plug 'tpope/vim-unimpaired'
Plug 'tpope/vim-rhubarb'
Plug 'tpope/vim-surround'
Plug 'tomtom/tcomment_vim'
Plug 'teranex/jk-jumps.vim'
Plug 'tpope/vim-repeat'
Plug 'godlygeek/tabular'
Plug 'milkypostman/vim-togglelist'
" }}}
" - Tmux Integration {{{
Plug 'benmills/vimux'
Plug 'tpope/vim-dispatch'
Plug 'christoomey/vim-tmux-navigator'
" }}}
" - Linting {{{
Plug 'w0rp/ale'
" }}}
" - Completion {{{
Plug 'Shougo/deoplete.nvim'
Plug 'roxma/nvim-completion-manager'
Plug 'roxma/python-support.nvim'
" }}}
" - Languages {{{
" Vim {{{
Plug 'Shougo/neco-vim'
Plug 'Shougo/neco-syntax'
Plug 'Shougo/neoinclude.vim'
Plug 'embear/vim-localvimrc'
Plug 'editorconfig/editorconfig-vim'
" }}}
" SCSS {{{
Plug 'cakebaker/scss-syntax.vim'
" }}}
" HTML {{{
Plug 'mattn/emmet-vim'
" }}}
" CSS {{{
Plug 'hail2u/vim-css3-syntax'
" }}}
" Javascript {{{ 
Plug 'pangloss/vim-javascript'
Plug 'michalliu/jsruntime.vim'
Plug 'michalliu/jsoncodecs.vim'
Plug 'Quramy/vim-js-pretty-template'
" }}}
" Elm {{{
Plug 'ElmCast/elm-vim'
Plug 'pbogut/deoplete-elm'
" }}}
" Vue {{{
Plug 'posva/vim-vue'
" }}}
" Clojure {{{
Plug 'tpope/vim-fireplace'
Plug 'markwoodhall/vim-figwheel'
Plug 'tpope/vim-salve'
Plug 'guns/vim-clojure-static'
Plug 'clojure-vim/acid.nvim'
Plug 'clojure-vim/async-clj-omni'
Plug 'snoe/clj-refactor.nvim'
Plug 'guns/vim-sexp'
Plug 'shaunlebron/parinfer'
" }}}
" Docker {{{
Plug 'zchee/deoplete-docker'
" }}}
" Ruby {{{
Plug 'fishbullet/deoplete-ruby'
" }}}
" Terraform {{{
Plug 'hashivim/vim-terraform'
" }}}
" Vault {{{
Plug 'hashivim/vim-vaultproject'
" }}}
" Packer {{{
Plug 'hashivim/vim-packer'
" }}}
" Nginx {{{
Plug 'chr4/nginx.vim'
" }}}
" Consul {{{
Plug 'hashivim/vim-consul'
" }}}
" }}}
" }}}
call plug#end()
filetype plugin indent on    " required
" @ Base options  {{{
" Display incomplete commands.
set showcmd
" Display the mode you're in.
set showmode

" Intuitive backspacing.
set backspace=indent,eol,start
" Handle multiple buffers better.
set hidden

" Enhanced command line completion.
set wildmenu
" Complete files like a shell.
set wildmode=list:longest

" Case-insensitive searching.
set ignorecase
" But case-sensitive if expression contains a capital letter.
set smartcase

" Show line numbers.
set number
" Show cursor position.
set ruler

" Highlight matches as you type.
set incsearch
" Don't highlight matches.
set nohlsearch

" Turn off line wrapping.
set nowrap    
" Show 3 lines of context around the cursor.
set scrolloff=3

" Set the terminal's title
set title
" No beeping.
set visualbell

" Don't make a backup before overwriting a file.
set nobackup
" And again.
set nowritebackup
" Keep swap files in one location
set directory=$HOME/.vim/tmp//,.

" Global tab width.
set tabstop=2
" And again, related
set shiftwidth=2
" Spaces, please
set expandtab


" Files open expanded
set foldlevelstart=50
" Use decent folding
set foldmethod=indent

" Show the status line all the time
set laststatus=2
" Useful status information at bottom of screen
set statusline=[%n]\ %<%.99f\ %h%w%m%r%y\ %{exists('*CapsLockStatusline')?CapsLockStatusline():''}%=%-16(\ %l,%c-%v\ %)%P

" Always diff using vertical mode
set diffopt+=vertical

" Allows the mouse to be used
set mouse=a

" Automatically reads changed files
set autoread

" Enable syntax highlighting
syntax on
" Sets the colorscheme for terminal sessions too.
colorscheme gruvbox
autocmd BufEnter * colorscheme gruvbox
set background=dark
set t_Co=256

" stop anoying large completion menu
set shortmess+=c



" Leader = ,
let mapleader = ","
" }}}
" @ Mappings  {{{
" ##### Tabs {{{
nnoremap <leader>t :tabnew<cr>
nnoremap <leader>e :tabedit
nnoremap <leader>c :tabclose<cr>
nnoremap <leader>n :tabnext<cr>
nnoremap <leader>p :tabprevious<cr>
" }}}
" ##### Line movement {{{
" Go to start of line with H and to the end with $
noremap H ^
noremap L $

" Emacs bindings in command-line mode
cnoremap <C-A> <home>
cnoremap <C-E> <end>
" }}}
" ##### Split windows {{{
" Create windows
nnoremap <leader>v <C-w>v<C-w>l
nnoremap <leader>m <C-w>s<C-w>j
nnoremap <leader>d <C-w>q
" }}}
" ##### Folding {{{
" Toggles folding with space
nnoremap <Space> za
" Open all folds
nnoremap zO zR
" Close all folds
nnoremap zC zM
" Close current fold
nnoremap zc zc
" Close all folds except the current one
nnoremap zf mzzMzvzz
" }}}
" ##### Search {{{
map /  <Plug>(incsearch-forward)
map ?  <Plug>(incsearch-backward)
map g/ <Plug>(incsearch-stay)
" }}}
" ##### Misc {{{
" Edit and load vimrc
nnoremap <leader>ev :vsplit $MYVIMRC<cr>
nnoremap <leader>sv :source $MYVIMRC<cr>

" Wrap current paragraph
noremap <leader>w gqap

" Toggles hlsearch
nnoremap <leader>hs :set hlsearch!<cr>

" Maps <C-C> to <esc>
noremap <C-C> <esc>

" Go full-screen
nnoremap <leader>fs :set lines=999 columns=9999<cr>

" Fix C-h on Neovim (read https://github.com/christoomey/vim-tmux-navigator#it-doesnt-work-in-neovim-specifically-c-h)
nnoremap <silent> <BS> :TmuxNavigateLeft<cr>
" }}}
" }}}
" @ Plugin configs  {{{
" - Clojure {{{
let g:deoplete#keyword_patterns = {}
let g:deoplete#keyword_patterns.clojure = '[\w!$%&*+/:<=>?@\^_~\-\.#]*'
" }}}
" - Terraform {{{
let g:terraform_align=1
let g:terraform_fold_sections=1
let g:terraform_remap_spacebar=1
" }}}
" - Deoplete {{{
let g:deoplete#enable_at_startup = 1
" }}}
" - Fugitive  {{{
" (thanks to Steve Losh's vimrc)
nnoremap <leader>gd :Gdiff<cr>
nnoremap <leader>gs :Gstatus<cr>
nnoremap <leader>gw :Gwrite<cr>
nnoremap <leader>ga :Gadd<cr>
nnoremap <leader>gb :Gblame<cr>
nnoremap <leader>gci :Gcommit<cr>
nnoremap <leader>ge :Gedit<cr>
nnoremap <leader>gm :Gmove
nnoremap <leader>gr :Gread<cr>
nnoremap <leader>grm :Gremove<cr>
nnoremap <leader>gp :Git push
" }}}
" - NERDTree  {{{
noremap <leader>ft :NERDTreeToggle<CR>

" Don't fuck up vim's default file browser
let g:NERDTreeHijackNetrw = 0
" }}}
" - Lightline  {{{
let g:lightline = {
      \ 'colorscheme': 'gruvbox',
      \ 'component_function': {
      \   'filetype': 'MyFiletype',
      \   'fileformat': 'MyFileformat',
      \ }
      \ }

function! MyFiletype()
  return winwidth(0) > 70 ? (strlen(&filetype) ? &filetype . ' ' . WebDevIconsGetFileTypeSymbol() : 'no ft') : ''
endfunction

function! MyFileformat()
  return winwidth(0) > 70 ? (&fileformat . ' ' . WebDevIconsGetFileFormatSymbol()) : ''
endfunction
" }}}
" - CtrlP  {{{
" Works not only in ancestor directories of my working directory.
let g:ctrlp_working_path_mode = 'a'
" Custom ignores
let g:ctrlp_custom_ignore = 'node_modules\|DS_Store|_build\'
" }}}
" - Yankstack  {{{
" Don't use default mappings
let g:yankstack_map_keys = 0

" Set bindings
nmap <C-M> <Plug>yankstack_substitute_older_paste
nmap <C-N> <Plug>yankstack_substitute_newer_paste
" }}}
" - Ack  {{{
noremap <C-F> :Ack!<space>
" }}}
" - togglelist {{{
let g:toggle_list_copen_command="Copen"
" }}}
" - localvimrc {{{
let g:localvimrc_persistent=1
" }}}
" - Tabularize {{{
nnoremap <leader>b= :Tabularize /=<CR>
vnoremap <leader>b= :Tabularize /=<CR>
nnoremap <leader>b: :Tabularize /:\zs<CR>
vnoremap <leader>b: :Tabularize /:\zs<CR>
nnoremap <leader>b<space> :Tabularize / <CR>
vnoremap <leader>b<space> :Tabularize / <CR>
" }}}
" - Vimux {{{
nnoremap <leader>rc :VimuxPromptCommand<CR>
nnoremap <leader>rr :VimuxRunLastCommand <CR>
nnoremap <leader>rz :VimuxZoomRunner <CR>
" }}}
" }}}
" @ Utility functions {{{
" ##### Number toggle  {{{
function! NumberToggle()
	if(&relativenumber == 1)
		set number
	else
		set relativenumber
	endif
endfunc

nnoremap <leader>ll :call NumberToggle()<cr>
"}}}
" ##### Ack motions {{{
" (from Steve Losh's vimrc)
" Motions to Ack for things.  Works with pretty much everything, including:
"
"   w, W, e, E, b, B, t*, f*, i*, a*, and custom text objects
"
" Awesome.
"
" Note: If the text covered by a motion contains a newline it won't work.  Ack
" searches line-by-line.

nnoremap <silent> <leader>a :set opfunc=<SID>AckMotion<CR>g@
xnoremap <silent> <leader>a :<C-U>call <SID>AckMotion(visualmode())<CR>

xnoremap <silent> <bs> :<C-U>call <SID>AckMotion(visualmode())<CR>

function! s:CopyMotionForType(type)
    if a:type ==# 'v'
        silent execute "normal! `<" . a:type . "`>y"
    elseif a:type ==# 'char'
        silent execute "normal! `[v`]y"
    endif
endfunction

function! s:AckMotion(type) abort
    let reg_save = @@

    call s:CopyMotionForType(a:type)

    execute "normal! :Ack! --literal " . shellescape(@@) . "\<cr>"

    let @@ = reg_save
endfunction
" }}}
" }}}
" @ Filetype-specific  {{{
" ##### Terraform {{{
autocmd FileType terraform setlocal commentstring=#%s
" }}}
" ##### Markdown  {{{
" Sets markdown syntax for *.md files.
autocmd BufRead,BufNewFile *.md set filetype=markdown

" Wrap markdown files.
autocmd BufRead,BufNewFile *.md set wrap

autocmd BufEnter *.md colorscheme solarized

" Set textwidth to 80 columns
autocmd FileType md set textwidth=80
" }}}
" ##### JavaScript  {{{
" Sets javascript syntax for *.json files.
autocmd BufRead,BufNewFile *.json set filetype=javascript

" Sets html syntax for *.ejs files.
autocmd BufRead,BufNewFile *.ejs set filetype=html
" }}}
" ##### Vim {{{
" Make vimrcs open folded
autocmd FileType vim set foldlevel=0
autocmd FileType vim set foldmethod=marker
let g:jsx_ext_required = 0
" }}}
" ##### XML {{{
" Automatically format XML files
nnoremap <leader>xb :%s,>[ <tab>]*<,>\r<,g<cr> gg=G
" }}}
" ##### SQL {{{
" SQL to CSV
nnoremap <leader>csv ggV/^+-<cr>dGV?^+-<cr>dgg:g/^+-/d<cr>:%s/^<bar> \<bar> <bar>$//g<cr>:%s/ *<bar> */,/g<cr>
" }}}
" ##### LookML {{{
" Sets YAML syntax for *.lookml files.
autocmd BufRead,BufNewFile *.lookml set filetype=yaml
" }}}
" ##### LaTeX {{{
" Build .tex files automatically
" autocmd FileType tex nnoremap <leader>c :!pdflatex %<cr>
" autocmd FileType tex nnoremap <leader>c :!pdflatex %<cr>
autocmd BufWritePost *.tex !pdflatex %
" Set textwidth to 80 columns
autocmd FileType tex set textwidth=80
" }}}
" ##### Elixir {{{
" Enable autocomplete using deoplete
autocmd FileType elixir nnoremap <leader>rt :call VimuxRunCommand("mix test " . bufname("%"))<CR>
" }}}
" }}}
