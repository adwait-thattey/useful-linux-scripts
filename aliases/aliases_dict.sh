#!/bin/bash
declare -A alias_dict
alias_dict=(
    
    # general commands alias
    ["ll"]="ls -l"
    ["la"]="ls -a"
    ["lla"]="ls -la"
    ["llt"]="ls -lt"
    ["llrt"]="ls -lrt"
    
    # Replace VIm with Neovim
    ["vimo"]="/usr/bin/vim"
    ["vim"]="/usr/bin/nvim"

    # cd alias
    #["cdfp"]="cd /media/athattey/bdcfastpass-2/"
    ["cdad"]="cd $DRIVE_ADWAIT"
    ["cdsec"]="cd $DRIVE_SECONDRY"
    ["cdprj"]="cd $DIR_PROJECTS"
    ["cdstudy"]="cd $DIR_STUDY"
    ["cdadth"]="cd $DRIVE_ADTH"

    
    # go alias
    ["gobd"]="go build"
    ["gorn"]="go run"

    # Rust and Cargo Aliases
    ["crb"]="cargo build"
    ["crr"]="cargo run"

    #git alias
    ["gst"]="git status"
    ["gcl"]="git clone"
    ["gcm"]="git commit"
    ["gcma"]="git commit --amend"
    ["gcmm"]="git commit -m"
    ["gd"]="git diff"
    ["gl"]="git log"
    ["gbr"]="git branch"
    ["gbra"]="git branch -a"
    ["ga"]="git add"
    ["gck"]="git checkout"
    ["gckp"]="git checkout --"
    ["grb"]="git rebase"
    ["grbc"]="git rebase --continue"
    ["gp"]="git push"
    ["gpf"]="git push --force-with-lease"
    ["gbr"]="git branch"
    ["gcmme"]="git commit --allow-empty -m"
    
    # #docker alias
    ["drps"]="docker ps"
    ["drpsa"]="docker ps -a"
    ["drst"]="docker start"
    ["drsp"]="docker stop"
    ["drex"]="docker exec"
    ["drexit"]="docker exec -it"
    ["drl"]="docker logs"
    ["drlf"]="docker logs -f"

    # #docker-compose alias
    ["drcbd"]="docker-compose build"
    ["drcup"]="docker-compose up"
    ["drcdn"]="docker-compose down"
    ["drcst"]="docker-compose start"
    ["drcsp"]="docker-compose stop"
    ["drcl"]="docker-compose logs"
    ["drclf"]="docker-compose logs -f"

)
