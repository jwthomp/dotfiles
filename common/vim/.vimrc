" enable filetype detection:
filetype on
filetype plugin on
filetype indent on " file type based indentation


set tabstop=2
set shiftwidth=2
set expandtab
syntax enable

" in makefiles, don't expand tabs to spaces, since actual tab characters are
" needed, and have indentation at 8 chars to be sure that all indents are tabs
" (despite the mappings later):
autocmd FileType make set noexpandtab shiftwidth=8 softtabstop=0

