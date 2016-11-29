#!/bin/bash
bash zsl.sh setup_finclude_cmd
if [ $? -ne 0 ];then exit; fi
`finclude $0 zsl.sh`
SetTEST $@

mygit="https://github.com/wordworld"

common=("common" "common" "$mygit/common")
zip=("zip" "zip" "$mygit/zip")
fvimSuits=("fvimSuits" "fvimSuits" "$mygit/fvimSuits")

cd ..
GitCheck ${common[@]}
GitCheck ${zip[@]}
GitCheck ${fvimSuits[@]}

