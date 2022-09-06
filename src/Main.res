let s = "这种写法是正常的"

let fn = s => j`$s`

let fn_1 = s => s

let fn_2 = s => s ++ ""
let fn_3 = s => s ++ ``

let s1 = s->fn

// Ok
let s3 = "没问题"->fn_1
let s6 = `没问题`->fn_1

let s9 = "😀"->fn_1

// bug:Look at lib/js/Main.bs.js

let s2 = "这里的就会乱码"->fn
let s4 = "出问题了"->fn_2
let s5 = `出问题了`->fn_2
let s7 = `出问题了`->fn_3
let s8 = "😀"->fn
let s10 = "😀"->fn_2
let s11 = "😀"->fn_3
