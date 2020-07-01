#!/bin/bash

cd ~/Documents/myProject/Xcode-Snippets-theme-Template/CodeSnippets

array=($(find . -name "*.codesnippet"))
regex="<key>IDECodeSnippetCompletionPrefix<\/key>$"

for i in ${array[@]}; do 
    line=`grep -n ${regex} ${i} | cut -d ":" -f 1`
    let "line++"
    desc=`sed -n "${line}p" ${i} | cut -d ">" -f 2 | cut -d "<" -f 1 | sed -e 's/ //g'`
    if [[ $i == *"${desc}"* ]]; then 
        continue
    fi
    mv ${i} "${desc}.codesnippet"
    echo ${desc}
done

# find . -name "*.codesnippet" -print0 | while read fname; do
#     _fname=${fname}
#     file_name=`${_fname} | cut -d "/" -f 2`
#     # echo "$file_name"
#     # regex="<key>IDECodeSnippetCompletionPrefix<\/key>$"
#     # line=`grep -n ${regex} ${file_name} | cut -d ":" -f 1`
#     # printf "$file_name"
#     # printf "$line"
#     # let "line++"
#     # desc=`sed -n "${line}p" ${file_name} | cut -d ">" -f 2 | cut -d "<" -f 1`
#     # printf "${desc}"
# done

# find . -name '*.codesnippet' -print0 |
#     while IFS= read -r -d '' line; do 
#         process "$line"
#     done

# file_list=`find . -name \*.codesnippet -exec process {} \;`

# for file_name in "${file_list}";
# do
#     # file_name2="$file_name" | cut -d "/" -f 2
#     echo "$file_name"
# done
