" =========================
" File tạm & lưu trữ
" =========================

set viminfofile^=~/.vim/tmp/viminfo

" Nơi lưu swap file (.swp, .swo)
set directory^=~/.config/vim/tmp/swap//

" Nơi lưu backup file (~)
set backup
set backupdir^=~/.vim/tmp/backup//

" Nơi lưu undo file (phục hồi undo sau khi đóng Vim)
set undofile
set undodir^=~/.vim/tmp/undo//

" Hiển thị số dòng
set number

" Tô màu cú pháp
syntax on

" Tìm kiếm không phân biệt hoa/thường
set ignorecase
set smartcase
set encoding=UTF-8

" nord themes
colorscheme nord
" alow mouse 


set splitright
" =========================
" Format program
" =========================

" ===============
" remap key
" ===============
set mouse=a
" F2 exit
nnoremap <F2> :q<CR>
"exit insert mode by F8
inoremap kj <Esc>
"==================
" Clang-format
"==================
nnoremap <F5> :silent! %!clang-format<CR>:w<CR>
" Tự động chọn file .clang-format gần nhất
let g:clang_format#detect_style_file = 1
"==================
" end Clang-format
"==================

" open terminal
let mapleader = " "
" space +n to open vert term
nnoremap <leader>n :vert term<CR>

" ===============
"  END remap key
" ===============

" ===============
"  Plugins
" ===============
call plug#begin()
" List your plugins here
Plug 'itchyny/lightline.vim'
Plug 'preservim/nerdtree'
call plug#end()
" ===============
" end Plugins
" ===============
"================
" status bar -lightline
"================
set laststatus=2
set noshowmode
let g:lightline = {
      \ 'colorscheme': 'wombat',
      \ }
"==============
" end status bar
"==============
"==============
" Nedtree
"==============
" F12 to open tree
nnoremap <F12> :NERDTreeToggle<CR>

" Tự động đóng NERDTree khi mở file
let NERDTreeQuitOnOpen=1

" Luôn cd vào root hiện tại của NERDTree khi nó được thay đổi
autocmd BufEnter * if exists("b:NERDTreeRoot") | execute 'lcd ' . b:NERDTreeRoot.path.str() | endif



" Ẩn file không cần thiết trong NERDTree
let NERDTreeIgnore = [
      \ '\.a$',
      \ '\.so$',
      \ '\.out$',
      \ '\~$',
      \ '\.swp$',
      \ '^main$', 
      \ '^prog$',
      \ '^app$',
      \ '\.exe$',
      \ '^a\.out$',
      \ '^\.\w\+',
      \ '^node_modules$'
      \ ]

"==============
"  End Nedtree
"==============




