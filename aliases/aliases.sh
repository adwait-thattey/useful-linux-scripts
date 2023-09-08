#!/bin/bash


gpf() {
    
    echo "git push --force-with-lease" "$@"
    git push --force-with-lease "$@"
}



gcma() {
    
    echo "git commit --amend" "$@"
    git commit --amend "$@"
}



gcmm() {
    
    echo "git commit -m" "$@"
    git commit -m "$@"
}



gcmme() {
    
    echo "git commit --allow-empty -m" "$@"
    git commit --allow-empty -m "$@"
}



cdfp() {
    
    echo "cd /media/athattey/bdcfastpass-2/" "$@"
    cd /media/athattey/bdcfastpass-2/ "$@"
}



gst() {
    
    echo "git status" "$@"
    git status "$@"
}



gckp() {
    
    echo "git checkout --" "$@"
    git checkout -- "$@"
}



gbr() {
    
    echo "git branch" "$@"
    git branch "$@"
}



gobd() {
    
    echo "go build" "$@"
    go build "$@"
}



grb() {
    
    echo "git rebase" "$@"
    git rebase "$@"
}



gl() {
    
    echo "git log" "$@"
    git log "$@"
}



grbc() {
    
    echo "git rebase --continue" "$@"
    git rebase --continue "$@"
}



ga() {
    
    echo "git add" "$@"
    git add "$@"
}



gd() {
    
    echo "git diff" "$@"
    git diff "$@"
}



gp() {
    
    echo "git push" "$@"
    git push "$@"
}



gck() {
    
    echo "git checkout" "$@"
    git checkout "$@"
}



gorn() {
    
    echo "go run" "$@"
    go run "$@"
}



gcm() {
    
    echo "git commit" "$@"
    git commit "$@"
}



gcl() {
    
    echo "git clone" "$@"
    git clone "$@"
}



gen_git_autocompletions() {
	. /usr/share/bash-completion/completions/git

	__git_complete ga _git_add
	__git_complete gck _git_checkout
}

gen_git_autocompletions

