" If using a dark background within the editing area and syntax highlighting
" turn on this option as well
"set background=dark


" The following are commented out as they cause vim to behave a lot
" differently from regular Vi. They are highly recommended though.
"set showcmd		" Show (partial) command in status line.
"set showmatch		" Show matching brackets.
"set ignorecase		" Do case insensitive matching
"set smartcase		" Do smart case matching
"set incsearch		" Incremental search
"set autowrite		" Automatically save before commands like :next and :make
"set hidden	     	" Hide buffers when they are abandoned
set mouse=a	        	" Enable mouse usage (all modes)
set number              " 显示行号 
syntax on               " 语法高亮。自动识别代码
set showmode            " 在底部显示，当前处于命令模式还是插入模式
set showcmd             " 命令模式下，在底部显示，当前键入的指令
set encoding=utf-8      " 使用 utf-8 编码
set t_Co=256            " 启用256色
filetype indent on      " 开启文件类型检查，并且载入与该类型对应的缩进规则
set autoindent          " 按下回车键后，下一行的缩进会自动跟上一行的缩进保持一致
set tabstop=4           " 按下 Tab 键时，Vim 显示的空格数
set shiftwidth=4        " 在文本上按下>>（增加一级缩进）、<<（取消一级缩进）或者==（取消全部缩进）时，每一级的字符数
set expandtab           " 自动将 Tab 转为空格
set softtabstop=4       " Tab 转为多少个空格
"set relativenumber      " 显示光标所在的当前行的行号，其他行都为相对于该行的相对行号
set cursorline          " 光标所在的当前行高亮
set textwidth=80        " 设置行宽，即一行显示多少个字符
set wrap                " 自动折行，即太长的行分成几行显示
set linebreak           " 只有遇到指定的符号（比如空格、连词号和其他标点符号），才发生折行。也就是说，不会在单词内部折行
set wrapmargin=2        " 指定折行处与编辑窗口的右边缘之间空出的字符数
set scrolloff=5         " 垂直滚动时，光标距离顶部/底部的位置（单位：行）
set sidescrolloff=15    " 水平滚动时，光标距离行首或行尾的位置（单位：字符）
set laststatus=2        " 是否显示状态栏。0 表示不显示，1 表示只在多窗口时显示，2 表示显示
set ruler               " 在状态栏显示光标的当前位置（位于哪一行哪一列）
set showmatch           " 光标遇到圆括号、方括号、大括号时，自动高亮对应的另一个圆括号、方括号和大括号
set hlsearch            " 搜索时，高亮显示匹配结果
set incsearch           " 输入搜索模式时，每输入一个字符，就自动跳到第一个匹配的结果
set ignorecase          " 搜索时忽略大小写
"set spell spelllang=en_us " 打开英语单词的拼写检查
"set nobackup            " 不创建备份文件
set undofile         
"操作记录保留在一个文件里面，继续存在。这意味着，重新打开一个文件，可以撤销上一次编辑时的操作。撤消文件是跟原文件保存在一起的隐藏文件，文件名以.un~开头
set undodir=~/.vim/.undo//  " 设置操作历史文件的保存位置。
set history=1000        " Vim 需要记住多少次历史操作
set autoread            " 打开文件监视。如果在编辑过程中文件发生外部改变（比如被别的编辑器编辑了），就会发出提示
set listchars=tab:»■,trail:■
set list                " 如果行尾有多余的空格（包括 Tab键），该配置将让这些空格显示成可见的小方块 
set wildmenu
set wildmode=longest:list,full "命令模式下，底部操作指令按下 Tab键自动补全。第一次按下 Tab，会显示所有匹配的操作指令的清单；第二次按下Tab，会依次选择各个指令



" Source a global configuration file if available
if filereadable("/etc/vim/vimrc.local")
  source /etc/vim/vimrc.local
endif

