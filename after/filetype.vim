if exists("did_load_delphi_filetypes")
  finish
endif
let did_load_delphi_filetypes = 1

let s:cpo_save = &cpo
set cpo&vim

augroup filetypedetect

  " Pascal / Delphi
  if (1==1) 
    au BufNewFile,BufRead *.pas,*.PAS set ft=delphi commentstring=//%s
    au BufNewFile,BufRead *.dpr,*.DPR set ft=delphi commentstring=//%s
    au BufNewFile,BufRead *.dfm,*.DFM set ft=delphi commentstring=//%s
    au BufNewFile,BufRead *.xfm,*.XFM set ft=delphi commentstring=//%s
    au BufNewFile,BufRead *.dpk,*.DPK set ft=delphi commentstring=//%s
  else
    au BufNewFile,BufRead *.pas,*.PAS set ft=pascal commentstring=//%s
    au BufNewFile,BufRead *.dpr,*.DPR set ft=pascal commentstring=//%s
    au BufNewFile,BufRead *.dfm,*.DFM set ft=pascal commentstring=//%s
    au BufNewFile,BufRead *.xfm,*.XFM set ft=pascal commentstring=//%s
    au BufNewFile,BufRead *.dpk,*.DPK set ft=pascal commentstring=//%s
  endif

  " Delphi .DOF file = INI file for MSDOS
  au BufNewFile,BufRead *.dof,*.DOF set ft=dosini
  au BufNewFile,BufRead *.kof,*.KOF set ft=dosini
  au BufNewFile,BufRead *.dsk,*.DSK set ft=dosini
  au BufNewFile,BufRead *.desk,*.DESK set ft=dosini
  au BufNewFile,BufRead *.dti,*.DTI set ft=dosini

augroup END

let &cpo = s:cpo_save
unlet s:cpo_save
