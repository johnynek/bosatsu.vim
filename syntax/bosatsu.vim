if exists("b:current_syntax")
  finish
endif

syn keyword bosatsuKeywords
  \ elif
  \ else
  \ enum
  \ export
  \ external
  \ if
  \ import
  \ match
  \ package
  \ recur
  \ struct

syn match bosatsuComment "#.*$"
syntax match bosatsuNumber "\v<\d(\d|_)*>"

syntax region bosatsuString start=/"/ skip=/\\"/ end=/"/
syntax region bosatsuString start=/'/ skip=/\\'/ end=/'/

syn keyword bosatsuDefKeyword def nextgroup=bosatsuFnName skipwhite
syntax match bosatsuFnName "\v<[^\((|:\)]+>" contained

syntax match bosatsuConsName "\v<[A-Z]\w*>"

hi link bosatsuKeywords Keyword
hi link bosatsuDefKeyword Keyword
hi link bosatsuComment Comment

highlight default link bosatsuString String
highlight default link bosatsuNumber Number
highlight default link bosatsuFnName Function
highlight default link bosatsuConsName Type

let b:current_syntax = "bosatsu"
