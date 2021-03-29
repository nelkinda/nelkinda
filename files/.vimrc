" Indentation rules for Libav: 4 spaces, no tabs.
set expandtab
set shiftwidth=4
set softtabstop=4
set cindent
set cinoptions=(0
" Allow tabs in Makefiles.
autocmd FileType make,automake set noexpandtab shiftwidth=8 softtabstop=8
" Trailing whitespace and tabs are forbidden, so highlight them.
highlight ForbiddenWhitespace ctermbg=red guibg=red
match ForbiddenWhitespace /\s\+$\|\t/
" Do not highlight spaces at the end of line while typing on that line.
autocmd InsertEnter * match ForbiddenWhitespace /\t\|\s\+\%#\@<!$/

" personal stuff
syn on
let g:load_doxygen_syntax=1
colorscheme elflord
let use_xhtml=1
let html_use_css=1

syn keyword javaTodo Review
syn keyword cTodo contained Review
syn keyword javaTodo contained Review

set nu
set formatoptions=tcroq
set hlsearch
set ruler
set laststatus=2
map <F2> [c:cp<RETURN>
map <F3> ]c:cn<RETURN>
set list listchars=tab:»·,trail:·

set textwidth=0

" Useful abbreviations to insert correctly formatted TODO:2011-10-03:cher:3 comments.
iabbrev TODO TODO:<c-r>=strftime("%Y-%m-%d")<cr>:<c-r>=expand("$USER")<cr>:3
iabbrev FIXME FIXME:<c-r>=strftime("%Y-%m-%d")<cr>:<c-r>=expand("$USER")<cr>:3
iabbrev XXX XXX:<c-r>=strftime("%Y-%m-%d")<cr>:<c-r>=expand("$USER")<cr>:3
iabbrev Review Review:<c-r>=strftime("%Y-%m-%d")<cr>:<c-r>=expand("$USERNAME")<cr>:3
iabbrev xtodo <span<Space>class="todo">TODO:<c-r>=strftime("%Y-%m-%d")<cr>:<c-r>=expand("$USER")<cr>:3</span><Left><Left><Left><Left><Left><Left><Left>

" Useful abbreviations to insert typical programming statements.
iabbrev pC public class
iabbrev psf public static final
iabbrev iM import
iabbrev iS import static
iabbrev psvm public static void main(final String... args)
iabbrev pvr public void run()
iabbrev pir public int run(final List<String> args) throws Exception
iabbrev imainv int main(void)
iabbrev imaina int main(int argc, char *argv[])

iabbr m+ public
iabbr m- private
iabbr m# protected
iabbr mY synchronized
iabbr mS static
iabbr mA abstract
iabbr mF final
iabbr mP strictfp
iabbr mT transient
iabbr mV volatile
iabbr mN native


set backspace=indent,eol,start
set fo+=tcroqnvl1
set modeline
set modelines=5

autocmd FileType make setlocal shiftwidth=8 tabstop=8 noexpandtab softtabstop=0 fo-=cro
autocmd FileType c setlocal cindent
autocmd FileType java setlocal cindent
