let s:splashes = '~/.config/nvim/viml/splashes.txt'
let s:header   = [
	\ '                                                  ',
	\ '                                                  ',
	\ '███╗   ██╗███████╗ ██████╗ ██╗   ██╗██╗███╗   ███╗',
	\ '████╗  ██║██╔════╝██╔═══██╗██║   ██║██║████╗ ████║',
	\ '██╔██╗ ██║█████╗  ██║   ██║██║   ██║██║██╔████╔██║',
	\ '██║╚██╗██║██╔══╝  ██║   ██║╚██╗ ██╔╝██║██║╚██╔╝██║',
	\ '██║ ╚████║███████╗╚██████╔╝ ╚████╔╝ ██║██║ ╚═╝ ██║',
	\ '╚═╝  ╚═══╝╚══════╝ ╚═════╝   ╚═══╝  ╚═╝╚═╝     ╚═╝',
	\ '                                                  ',
\]

let s:splash = system('shuf -n 1 ' . s:splashes . ' | tr "\n" "!"')
let s:len    = (strlen(s:header[0]) - strlen(s:splash)) / 2 - 3

let s:splash = printf("%*s [ %s ]", s:len, ' ', s:splash)

let s:header = add(s:header, s:splash)
let s:header = add(s:header, s:header[0])
let s:header = add(s:header, s:header[0])

let g:dashboard_custom_header  = s:header
let g:dashboard_custom_section = {
	\ 'row0': {
		\ 'description': [' New file                          '],
		\ 'command': 'enew'
	\},
	\ 'row1': {
		\ 'description': [' Open vimrc                        '],
		\ 'command': 'badd $MYVIMRC | bnext'
	\},
	\ 'row2': {
		\ 'description': ['ﮮ Update plugins                    '],
		\ 'command': 'source $MYVIMRC | PlugUpdate'
	\},
	\ 'row3': {
		\ 'description': [' Close this sheet                  '],
		\ 'command': 'qa!'
	\},
\}

augroup Dashboard
	autocmd!
	autocmd FileType dashboard set showtabline=0 laststatus=0 noruler nowrap |
	\ autocmd BufLeave <buffer> set showtabline=2 laststatus=2 ruler wrap |
	\ autocmd BufEnter <buffer> set cc= listchars= nonu nornu showtabline=0 laststatus=0 noruler nowrap
augroup END
