#!/bin/bash


drcst() {
    
    echo "docker-compose start" "$@"
    docker-compose start "$@"
}



drcsp() {
    
    echo "docker-compose stop" "$@"
    docker-compose stop "$@"
}



drcl() {
    
    echo "docker-compose logs" "$@"
    docker-compose logs "$@"
}



gpf() {
    
    echo "git push --force-with-lease" "$@"
    git push --force-with-lease "$@"
}



drclf() {
    
    echo "docker-compose logs -f" "$@"
    docker-compose logs -f "$@"
}



crr() {
    
    echo "cargo run" "$@"
    cargo run "$@"
}



drl() {
    
    echo "docker logs" "$@"
    docker logs "$@"
}



crb() {
    
    echo "cargo build" "$@"
    cargo build "$@"
}



ll() {
    
    echo "ls -l" "$@"
    ls -l "$@"
}



drps() {
    
    echo "docker ps" "$@"
    docker ps "$@"
}



la() {
    
    echo "ls -a" "$@"
    ls -a "$@"
}



drcbd() {
    
    echo "docker-compose build" "$@"
    docker-compose build "$@"
}



drcdn() {
    
    echo "docker-compose down" "$@"
    docker-compose down "$@"
}



gcma() {
    
    echo "git commit --amend" "$@"
    git commit --amend "$@"
}



gcmm() {
    
    echo "git commit -m" "$@"
    git commit -m "$@"
}



vimo() {
    
    echo "/usr/bin/vim" "$@"
    /usr/bin/vim "$@"
}



gcmme() {
    
    echo "git commit --allow-empty -m" "$@"
    git commit --allow-empty -m "$@"
}



drlf() {
    
    echo "docker logs -f" "$@"
    docker logs -f "$@"
}



drcup() {
    
    echo "docker-compose up" "$@"
    docker-compose up "$@"
}



cdad() {
    
    echo "cd /run/media/coderdude/Adwait" "$@"
    cd /run/media/coderdude/Adwait "$@"
}



drexit() {
    
    echo "docker exec -it" "$@"
    docker exec -it "$@"
}



gst() {
    
    echo "git status" "$@"
    git status "$@"
}



cdsec() {
    
    echo "cd /run/media/coderdude/Secondry" "$@"
    cd /run/media/coderdude/Secondry "$@"
}



gckp() {
    
    echo "git checkout --" "$@"
    git checkout -- "$@"
}



gbra() {
    
    echo "git branch -a" "$@"
    git branch -a "$@"
}



drst() {
    
    echo "docker start" "$@"
    docker start "$@"
}



drsp() {
    
    echo "docker stop" "$@"
    docker stop "$@"
}



vim() {
    
    echo "/usr/bin/nvim" "$@"
    /usr/bin/nvim "$@"
}



gbr() {
    
    echo "git branch" "$@"
    git branch "$@"
}



llt() {
    
    echo "ls -lt" "$@"
    ls -lt "$@"
}



cdprj() {
    
    echo "cd /run/media/coderdude/Adwait/Projects" "$@"
    cd /run/media/coderdude/Adwait/Projects "$@"
}



lla() {
    
    echo "ls -la" "$@"
    ls -la "$@"
}



gobd() {
    
    echo "go build" "$@"
    go build "$@"
}



grb() {
    
    echo "git rebase" "$@"
    git rebase "$@"
}



llrt() {
    
    echo "ls -lrt" "$@"
    ls -lrt "$@"
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



drpsa() {
    
    echo "docker ps -a" "$@"
    docker ps -a "$@"
}



drex() {
    
    echo "docker exec" "$@"
    docker exec "$@"
}



cdstudy() {
    
    echo "cd /run/media/coderdude/Adwait/Study" "$@"
    cd /run/media/coderdude/Adwait/Study "$@"
}



gen_git_autocompletions() {
	. /usr/share/bash-completion/completions/git

	__git_complete ga _git_add
	__git_complete gck _git_checkout
}

gen_git_autocompletions

