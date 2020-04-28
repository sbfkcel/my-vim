" 全局设置
" =================================
" 设置leader键为空格
let mapleader=" "

" 不使用vi的键盘模式，而是vim自己的
set nocompatible

" 设定默认解码
set encoding=utf-8

" 历史记录
set history=100

" 在处理未保存或只读文件的时候，弹出确认
set confirm

" 侦测文件类型
filetype on

" 载入文件类型插件
filetype plugin on

" 为特定文件类型载入相关缩进文件
filetype indent on
filetype plugin indent on

" 不备份文件
set nobackup

" 代码高亮
syntax on

" 显示行号
set number

" 上下行号根据当前行相对显示
" set norelativenumber

" 开启光标行高亮
set cursorline

" 开启光标列高亮
set cursorcolumn

" 设置不自动换行
set wrap

" 右下角显示正在输入的命令
set showcmd

" 字符间插入的像素行数目
set linespace=0

" 增强模式中的命令行自动完成操作
set wildmenu

" 搜索高亮
set hlsearch

" 取消高亮
exec "nohlsearch"

" 边输入边搜索
set incsearch

" 搜索智能忽略大小写
set smartcase

" 让配色不受终端本身影响
let &t_ut=''

" 设置tab缩进和空格的显示
set expandtab
set tabstop=4
set shiftwidth=4
set softtabstop=4
set list
set listchars=tab:▸\ ,trail:-

" 设置不要自动插入换行
set tw=0
set indentexpr=

" 缩进设置（缩进折叠方法）
set foldmethod=indent

" 设置默认不折叠
set foldlevel=99

" 不同模式下启用不同的光标
let &t_SI = "\<Esc>]50;CursorShape=1\x7"
let &t_SR = "\<Esc>]50;CursorShape=2\x7"
let &t_EI = "\<Esc>]50;CursorShape=0\x7"

" 在状态行上显示光标所在位置的行号和列号
set ruler
set rulerformat=%20(%2*%<%f%=\ %m%r\ %3l\ %c\ %p%%%)

" 命令行（在状态行下）的高度，默认为1，这里是2
set cmdheight=2

" 使回格键（backspace）正常处理indent, eol, start等，能从行首退格到上一行行尾
set backspace=2

" 允许backspace和光标键跨越行边界
set whichwrap+=<,>,h,l

" 启动的时候不显示那个援助索马里儿童的提示
set shortmess=atI

" 不让vim发出讨厌的滴滴声
set noerrorbells

" 高亮显示匹配的括号
set showmatch

" 匹配括号高亮的时间（单位是十分之一秒）
set matchtime=5

" 光标移动到buffer的顶部和底部时保持5行距离
set scrolloff=5

" 我的状态行显示的内容（包括文件类型和解码）
set statusline=%F%m%r%h%w\ [FORMAT=%{&ff}]\ [TYPE=%Y]\ [POS=%l,%v][%p%%]\ %{strftime(\"%d/%m/%y\ -\ %H:%M\")}

" 总是显示状态行
set laststatus=2

" 不要用空格代替制表符
set expandtab

" 不要换行
set nowrap

" 在vim下执行外部命令在当前目录下执行
set autochdir

" 记住文件光标位置
au BufReadPost * if line("'\"") > 1 && line("'\"") <= line("$") | exe "normal! g'\"" | endif

" 启用鼠标支持
set mouse=a

" 括号补全
inoremap ( ()<ESC>i
inoremap [ []<ESC>i
inoremap { {}<ESC>i
inoremap < <><ESC>i
inoremap ‘ ’‘<ESC>i
inoremap " ""<ESC>i
inoremap ' ''<ESC>i


" 快捷键设置
" =================================
" 搜索跳转结果改为=/-并且使搜索结果在屏幕中间
noremap = nzz
noremap - Nzz

" 大写JKHL重复五次执行
noremap J 5j
noremap K 5k
noremap H 5h
noremap L 5l

" 空格、回车取消高亮
noremap <LEADER><CR> :nohlsearch<CR>

" 保存、退出、配置重载
map S :w<CR>
map Q :q<CR>
map R :source $MYVIMRC<CR>

" 打开终端
map ~ :term<CR>

" 命令快速输入
map ; :

" 分屏操作
map sl :set splitright<CR>:vsplit<CR>
map sh :set nosplitright<CR>:vsplit<CR>
map sk :set nosplitbelow<CR>:split<CR>
map sj :set splitbelow<CR>:split<CR>

" 分屏方向切换
map <LEADER>V <C-w>t<C-w>H
map <LEADER>H <C-w>t<C-w>K

" 分屏光标切换
map <LEADER>l <C-w>l
map <LEADER>k <C-w>k
map <LEADER>h <C-w>h
map <LEADER>j <C-w>j

" 键盘方向键调整分屏大小
map <up> :res +5<CR>
map <down> :res -5<CR>
map <left> :vertical resize-5<CR>
map <right> :vertical resize+5<CR>

" 标签的创建与切换
map tn :tabe<CR>
map [ :-tabnext<CR>
map ] :+tabnext<CR>
map tc :tabclose<CR>


" 插件安装
" =================================
" 指定插件安装目录
call plug#begin('~/.vim/plugged')

" 状态栏插件
Plug 'vim-airline/vim-airline'

" 主题
Plug 'connorholyday/vim-snazzy'

" 树形资源管理器
Plug 'scrooloose/nerdtree', { 'on': 'NERDTreeToggle' }
Plug 'Xuyuanp/nerdtree-git-plugin'

" 函数显示
Plug 'majutsushi/tagbar', { 'on': 'TagbarOpenAutoClose' }

" 错误检查
Plug 'w0rp/ale'

" 智能补全
Plug 'neoclide/coc.nvim', {'branch': 'release'}

" 记住文件最后一次编辑的位置
Plug 'mbbill/undotree/'

" 缩进参考线
Plug 'nathanaelkane/vim-indent-guides'

" 光标单词下划线
Plug 'itchyny/vim-cursorword'

" Git
Plug 'rhysd/conflict-marker.vim'
Plug 'tpope/vim-fugitive'
" Plug 'mhinz/vim-signify'
Plug 'gisphm/vim-gitignore', { 'for': ['gitignore', 'vim-plug'] }

" HTML, CSS, JavaScript, PHP, JSON, etc.
Plug 'elzr/vim-json'
Plug 'hail2u/vim-css3-syntax'
Plug 'spf13/PIV', { 'for' :['php', 'vim-plug'] }
Plug 'gko/vim-coloresque', { 'for': ['vim-plug', 'php', 'html', 'javascript', 'css', 'less'] }
Plug 'pangloss/vim-javascript', { 'for' :['javascript', 'vim-plug'] }
Plug 'mattn/emmet-vim'

" Python
Plug 'vim-scripts/indentpython.vim'

" Markdown
Plug 'iamcco/markdown-preview.nvim', { 'do': { -> mkdp#util#install_sync() }, 'for' :['markdown', 'vim-plug'] }
Plug 'dhruvasagar/vim-table-mode', { 'on': 'TableModeToggle' }
Plug 'vimwiki/vimwiki'

" Bookmarks
Plug 'kshenoy/vim-signature'

" 多光标操作
Plug 'terryma/vim-multiple-cursors'

" 快速为一段内容添加括号或引号等
Plug 'tpope/vim-surround'

" 快速对齐（左、右、中间、插入指定数量的空格）
Plug 'godlygeek/tabular'

" 快速选择结对符内容
Plug 'gcmt/wildfire.vim'

" 快速注释
Plug 'scrooloose/nerdcommenter'

" 代码片段插入
Plug 'MarcWeber/vim-addon-mw-utils'

" C#支持
Plug 'OmniSharp/omnisharp-vim'

call plug#end()


" 插件配置
" =================================
" 设置主题颜色
color snazzy

" 设置资树形源管理器打开方式
map tt :NERDTreeToggle<CR>
let NERDTreeMapActivateNode = "i"

" 设置树形资源管理器中的git状态
let g:NERDTreeIndicatorMapCustom = {
    \ "Modified"  : "✹",
    \ "Staged"    : "✚",
    \ "Untracked" : "✭",
    \ "Renamed"   : "➜",
    \ "Unmerged"  : "═",
    \ "Deleted"   : "✖",
    \ "Dirty"     : "✗",
    \ "Clean"     : "✔︎",
    \ "Unknown"   : "?"
    \ }

" ale
let b:ale_linters = ['pylint']
let b:ale_fixers = ['autopep8', 'yapf']

" 函数显示打开方式
map <silent> T :TagbarOpenAutoClose<CR>

" Markdown 表格输入
map <LEADER>tm :TableModeToggle<CR>

" 缩进参考线
let g:indent_guides_guide_size = 1
let g:indent_guides_start_level = 2
let g:indent_guides_enable_on_vim_startup = 1
let g:indent_guides_color_change_percent = 1
silent! unmap <LEADER>ig
autocmd WinEnter * silent! unmap <LEADER>ig

" 书签增强设置
let g:SignatureMap = {
    \ 'Leader'             :  "m",
    \ 'PlaceNextMark'      :  "m,",
    \ 'ToggleMarkAtLine'   :  "m.",
    \ 'PurgeMarksAtLine'   :  "dm-",
    \ 'DeleteMark'         :  "dm",
    \ 'PurgeMarks'         :  "dm/",
    \ 'PurgeMarkers'       :  "dm?",
    \ 'GotoNextLineAlpha'  :  "m<LEADER>",
    \ 'GotoPrevLineAlpha'  :  "",
    \ 'GotoNextSpotAlpha'  :  "m<LEADER>",
    \ 'GotoPrevSpotAlpha'  :  "",
    \ 'GotoNextLineByPos'  :  "",
    \ 'GotoPrevLineByPos'  :  "",
    \ 'GotoNextSpotByPos'  :  "mn",
    \ 'GotoPrevSpotByPos'  :  "mp",
    \ 'GotoNextMarker'     :  "",
    \ 'GotoPrevMarker'     :  "",
    \ 'GotoNextMarkerAny'  :  "",
    \ 'GotoPrevMarkerAny'  :  "",
    \ 'ListLocalMarks'     :  "m/",
    \ 'ListLocalMarkers'   :  "m?"
    \ }

" 撤销更改插件
let g:undotree_DiffAutoOpen = 0
" "map L :UndotreeToggle<CR>

"C# omnisharp配置
let g:OmniSharp_typeLookupInPreview = 1
let g:omnicomplete_fetch_full_documentation = 1
let g:OmniSharp_server_use_mono = 1
let g:OmniSharp_server_stdio = 1
let g:OmniSharp_highlight_types = 2
let g:OmniSharp_selector_ui = 'ctrlp'
autocmd Filetype cs nnoremap <buffer> gd :OmniSharpPreviewDefinition<CR>
autocmd Filetype cs nnoremap <buffer> gr :OmniSharpFindUsages<CR>
autocmd Filetype cs nnoremap <buffer> gy :OmniSharpTypeLookup<CR>
autocmd Filetype cs nnoremap <buffer> ga :OmniSharpGetCodeActions<CR>
autocmd Filetype cs nnoremap <buffer> <LEADER>rn :OmniSharpRename<CR><C-N>:res +5<CR>
sign define OmniSharpCodeActions text=💡
augroup OSCountCodeActions
	autocmd!
	autocmd FileType cs set signcolumn=yes
	autocmd CursorHold *.cs call OSCountCodeActions()
augroup END
function! OSCountCodeActions() abort
	if bufname('%') ==# '' || OmniSharp#FugitiveCheck() | return | endif
	if !OmniSharp#IsServerRunning() | return | endif
	let opts = {
				\ 'CallbackCount': function('s:CBReturnCount'),
				\ 'CallbackCleanup': {-> execute('sign unplace 99')}
				\}
	call OmniSharp#CountCodeActions(opts)
endfunction
function! s:CBReturnCount(count) abort
	if a:count
		let l = getpos('.')[1]
		let f = expand('%:p')
		execute ':sign place 99 line='.l.' name=OmniSharpCodeActions file='.f
	endif
endfunction
