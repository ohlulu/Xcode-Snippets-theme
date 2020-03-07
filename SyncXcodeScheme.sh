#!bin/sh

# colors
RED='\033[0;31m'
GREEN='\033[1;32m'
YELLOW='\033[1;33m'
NC='\033[0m'

# paths
basePath="${HOME}/Library/Developer/Xcode"
templatePath="${basePath}/Templates"
codeSnippets="${basePath}/UserData/CodeSnippets"

repoPath="${HOME}/Documents/myProject/Xcode-Snippets-theme-Template"

check() {
	# Thanks to https://askubuntu.com/questions/648577/copying-files-from-directories-having-spaces-in-its-name
	if [ -d "$1" ]; then
		echo "$(basename $1) path exist. remove"
        rm rf "$1"
    else 
        echo "$(basename $1) path not found, create a new one"
        mkdir "$1"
	fi
    
}

# functions
checkTargetPath() {
    printf "Check target Path\n"
    if [ -d "$templatePath" ]; then
        printf "${GREEN}Has ${templatePath}/\n"
        if [ -d "${codeSnippets}" ]; then
            printf "${GREEN}Has ${codeSnippets}/\n"
        else 
            printf "${RED}hasn't ${codeSnippets}/\n"
            exit 1
        fi
    else
        printf "${RED}hasn't  ${templatePath}/\n"
        exit 1
    fi
}

cleanReop() {
    printf "${NC}clean repo ...\n"
    check "${repoPath}/Templates"
    check "${repoPath}/CodeSnippets"
}

syncToReop() {
    printf "${NC}Start Sycn to repo ...\n"
    syncTemplate
    syncCodeSnippets
    pushRepo
}

syncTemplate() {
    printf "${NC}sync Template ...\n"
    _template="${templatePath}/File Templates"
    _repo="${repoPath}/Templates"

    cp -R "${_template}" "${_repo}"
}

syncCodeSnippets() {
    printf "${NC}sync CodeSnippets ...\n"
    _codeSnippets="${codeSnippets}"
    _repo="${repoPath}"

    cp -R "${_codeSnippets}" "${_repo}"
}

pushRepo() {
    cd $repoPath

    printf "git commit ...\n"
    git add -A
    d=$(date +"%Y/%m/%d")
    msg="[ Update ] : ${d}"
    git commit -m "${msg}"

    printf "git push ...\n"
    git push -u origin master
}

checkTargetPath
cleanReop
syncToReop

printf "${GREEN} Sync Success! 👻"