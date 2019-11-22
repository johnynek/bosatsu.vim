setlocal indentexpr=BosatsuIndent()

function! BosatsuIndent()
  let line = getline(v:lnum)
  let previousNum = prevnonblank(v:lnum - 1)
  let previous = getline(previousNum)

  if previous =~ ":\s*$"
    return indent(previousNum) + &tabstop
  endif
  return indent(previousNum)
endfunction
