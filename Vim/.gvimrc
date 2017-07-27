" An example for a gvimrc file.
" The commands in this are executed when the GUI is started, after the vimrc
" has been executed.
"
" Maintainer: Bram Moolenaar <Bram@vim.org>
" Last change:  2016 Apr 05
"
" To use it, copy it to
"     for Unix and OS/2:  ~/.gvimrc
"       for Amiga:  s:.gvimrc
"  for MS-DOS and Win32:  $VIM\_gvimrc
"     for OpenVMS:  sys$login:.gvimrc

" Make external commands work through a pipe instead of a pseudo-tty
" set noguipty

" set the X11 font to use
" set guifont=-misc-fixed-medium-r-normal--14-130-75-75-c-70-iso8859-1

set ch=2    " Make command line two lines high

set mousehide   " Hide the mouse when typing text

" Make shift-insert work like in Xterm
map <S-Insert> <MiddleMouse>
map! <S-Insert> <MiddleMouse>

" Only do this for Vim version 5.0 and later.
if version >= 500

  " Switch on syntax highlighting if it wasn't on yet.
  if !exists("syntax_on")
    syntax on
  endif

  " For Win32 version, have "K" lookup the keyword in a help file
  "if has("win32")
  "  let winhelpfile='windows.hlp'
  "  map K :execute "!start winhlp32 -k <cword> " . winhelpfile <CR>
  "endif

  " Set nice colors
  " background for normal text is light grey
  " Text below the last line is darker grey
  " Cursor is green, Cyan when ":lmap" mappings are active
  " Constants are not underlined but have a slightly lighter background
  highlight Normal guibg=grey90
  highlight Cursor guibg=Green guifg=NONE
  highlight lCursor guibg=Cyan guifg=NONE
  highlight NonText guibg=grey80
  highlight Constant gui=NONE guibg=grey95
  highlight Special gui=NONE guibg=grey95

endif

" 高亮!
filetype on
set expandtab
set tabstop=4
set shiftwidth=4
" 自动缩进
set autoindent
set cindent
set smartindent
syntax on

" 字体大小
set guifont=Menlo:h13

" 忽略大小写
set ignorecase

" 显示行号
set number

" 突出显示当前行
set cursorline

" 打开状态栏标尺
set ruler

" 高亮显示搜索结果
set hlsearch

" 选择主题颜色
set background=dark
colorscheme solarized

" 自适应不同语言的智能缩进
filetype indent on

" 设置编码
set fencs=utf-8,ucs-bom,shift-jis,gb18030,gbk,gb2312,cp936
set termencoding=utf-8
set encoding=utf-8
set fileencodings=ucs-bom,utf-8,cp936,gb18030,big5,euc-jp,euc-kr,latin1
set fileencoding=utf-8

" 不需要备份文件
set nobackup
" 不创建临时交换文件
set noswapfile
" 编辑的时候不需要备份文件
set nowritebackup
" 不创建撤销文件
set noundofile

" NERD Tree
nmap <F5> :NERDTreeToggle<cr>

" Json-Format
nmap <F2> :%!python -m json.tool<cr>

" vim-powerlin
set rtp+=/usr/local/lib/python3.6/site-packages/powerline/bindings/vim
set guifont=Meslo\ LG\ S\ Regular\ for\ Powerline:h13
set t_Co=256
set number
" 设置该设置项会导致 Macvim 乱码
" set term=xterm-256color
set laststatus=2
let g:Powerline_symbols = 'fancy'
set fillchars+=stl:\ ,stlnc:\

" 添加一个~/.vimrc.bundles文件来保存所有插件的配置
if filereadable(expand("~/.gvimrc.bundles"))
source ~/.gvimrc.bundles
endif
