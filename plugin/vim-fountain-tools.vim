function! CopyDeleteAllText()
  execute ":normal! gg"
  execute ":normal! dG"
endfunction
nnoremap <leader><Del> :call CopyDeleteAllText()<CR>

function! MakeIntoNote()
  let note_content=getline('.')
  execute ":normal! 0i[[".note_content."]]\n"
  execute ":normal! dd"
endfunction
nnoremap <leader>rn :call MakeIntoNote()<CR>

function! AddNote()
  call inputsave()
  let note=input("Add note: ")
  call inputrestore()
  if note != ""
    execute ":normal! a[[".note."]]"
  endif
endfunction
nnoremap <leader>n :call AddNote()<CR>

function! AddBlankWordNote()
  call inputsave()
  let note=input("Add blank word note: ")
  call inputrestore()
  if note != ""
    execute ":normal! a**blank**[[".note."]]"
  endif
endfunction

function! AddCenteredText()
  call inputsave()
  let centered_text=input("Add centered text: ")
  call inputrestore()
  if centered_text != ""
    execute ":normal! a>".centered_text."<"
  endif
endfunction
nnoremap <leader>c :call AddCenteredText()<CR>

function! AddParanthetical()
  call inputsave()
  let content=input("Add paranthetical:")
  call inputrestore()
  if content != ""
    execute ":normal! a(".content.")"
  endif
endfunction
nnoremap <leader>p :call AddParanthetical()<CR>

function! DeleteNote()
  execute ":normal! f["
  execute ":normal! \<S-f>["
  let @0 =""
  execute ":normal! \"0yi["
  if @0 !=""
    execute ":normal! di["
    execute ":normal! da["
    execute ":normal! da["
  endif
endfunction
nnoremap <leader><S-n> :call DeleteNote()<CR>

function! FountainElementFormatter()
  let line=getline('.')
  if line =~ '^[0-9a-z]\+\( (.*)\)\?\( \^\)\?$'
    let line_upper_case=toupper(line)
    exec ":s/".line."/".line_upper_case
    exec ":normal $"
  elseif line =~ '^.* to:$'
    let line_upper_case=toupper(line)
    exec ":s/".line."/".line_upper_case
    exec ":normal $"
  elseif line =~ '^int\. .* - day.*$'
    let line_upper_case=toupper(line)
    exec ":s/".line."/".line_upper_case
    exec ":normal $"
  elseif line =~ '^ext\. .* - day.*$'
    let line_upper_case=toupper(line)
    exec ":s/".line."/".line_upper_case
    exec ":normal $"
  elseif line =~ '^int\. .* - night.*$'
    let line_upper_case=toupper(line)
    exec ":s/".line."/".line_upper_case
    exec ":normal $"
  elseif line =~ '^ext\. .* - night.*$'
    let line_upper_case=toupper(line)
    exec ":s/".line."/".line_upper_case
    exec ":normal $"
  elseif line =~ '^int/ext\. .* - night.*$'
    let line_upper_case=toupper(line)
    let line=substitute(line, '\/', '\\\/', "")
    let line_upper_case=substitute(line_upper_case, '\/', '\\\/', "")
    exec ":s/".line."/".line_upper_case
    exec ":normal $"
  elseif line =~ '^int/ext\. .* - day.*$'
    let line_upper_case=toupper(line)
    let line=substitute(line, '\/', '\\\/', "")
    let line_upper_case=substitute(line_upper_case, '\/', '\\\/', "")
    exec ":s/".line."/".line_upper_case
    exec ":normal $"
  elseif line =~ '^ext/int\. .* - night.*$'
    let line_upper_case=toupper(line)
    let line=substitute(line, '\/', '\\\/', "")
    let line_upper_case=substitute(line_upper_case, '\/', '\\\/', "")
    exec ":s/".line."/".line_upper_case
    exec ":normal $"
  elseif line =~ '^ext/int\. .* - day.*$'
    let line_upper_case=toupper(line)
    let line=substitute(line, '\/', '\\\/', "")
    let line_upper_case=substitute(line_upper_case, '\/', '\\\/', "")
    exec ":s/".line."/".line_upper_case
    exec ":normal $"
  elseif line =~ '^i/e .* - day.*$'
    let line_upper_case=toupper(line)
    let line=substitute(line, '\/', '\\\/', "")
    let line_upper_case=substitute(line_upper_case, '\/', '\\\/', "")
    exec ":s/".line."/".line_upper_case
    exec ":normal $"
  elseif line =~ '^i/e .* - night.*$'
    let line_upper_case=toupper(line)
    let line=substitute(line, '\/', '\\\/', "")
    let line_upper_case=substitute(line_upper_case, '\/', '\\\/', "")
    exec ":s/".line."/".line_upper_case
    exec ":normal $"
  elseif line =~ '^\..*$'
    let line_upper_case=toupper(line)
    exec ":s/".line."/".line_upper_case
    exec ":normal $"
  elseif line =~ '^fade in:$'
    let line_upper_case=toupper(line)
    exec ":s/".line."/".line_upper_case
    exec ":normal $"
  elseif line =~ '^fade out:$'
    let line_upper_case=toupper(line)
    exec ":s/".line."/".line_upper_case
    exec ":normal $"
  elseif line =~ '^.* cut:$'
    let line_upper_case=toupper(line)
    exec ":s/".line."/".line_upper_case
    exec ":normal $"
  endif
endfunction
inoremap <silent> <CR> <C-o>:call FountainElementFormatter()<CR><CR>

inoremap <silent> NN <Esc>:call AddNote()<CR>A
inoremap <silent> CC <Esc>:call AddCenteredText()<CR>A
inoremap <silent> PP <Esc>:call AddParanthetical()<CR>A
inoremap <silent> < <Esc>:call AddBlankWordNote()<CR>A
inoremap <silent> > ...
