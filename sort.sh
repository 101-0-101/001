#!/bin/bash
echo
echo "ВЫВОД: SPACE - по 10 строк, Enter - по 1 строке, CTRL+Z - Завершить"
echo
get_size () {
     local path="$1"
     local size=$(du -sh "$path" 2>/dev/null | cut -f1)
     echo $size
     }
for item in .* *; do
     if [[ "$item" == ".." ]]; then
<------>continue
     fi 
     size=$(get_size "$item")
     echo -e "$size\t$item"  
done | sort -hr -k1 | more -10        

