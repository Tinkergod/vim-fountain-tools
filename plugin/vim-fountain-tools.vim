function! AddNote()
  call inputsave()
  let note=input("Add note:")
  call inputrestore()
  if note != ""
    execute ":normal! i[[".note."]]"
  endif
endfunction
nnoremap <leader>n :call AddNote()<CR>

function! AddCenteredText()
  call inputsave()
  let centered_text=input("Add centered text:")
  call inputrestore()
  if centered_text != ""
    execute ":normal! i>".centered_text."<"
  endif
endfunction
nnoremap <leader>c :call AddCenteredText()<CR>

function! AddParanthetical()
  call inputsave()
  let content=input("Add paranthetical:")
  call inputrestore()
  if content != ""
    execute ":normal! i(".content.")"
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
  elseif line =~ '^int\.\?/ext .* - night.*$'
    let line_upper_case=toupper(line)
    let line=substitute(line, '\/', '\\\/', "")
    let line_upper_case=substitute(line_upper_case, '\/', '\\\/', "")
    exec ":s/".line."/".line_upper_case
    exec ":normal $"
  elseif line =~ '^int\.\?/ext .* - day.*$'
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
  endif
endfunction
inoremap <silent> <CR> <C-o>:call FountainElementFormatter()<CR><CR>
