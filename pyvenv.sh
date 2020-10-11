#!/bin/bash

# A script that manages python virtual environments using virtualenv

pyvenv_help() {
    printf "This script provides an easy way to create and start python virtual environments from anywhere\n"
    printf "3 main commands are available \n\n"

    printf "./pyvenv.sh init : Use this command to install the script first time in /usr/local/bin and provide the path where the virtual environments should be installed \n\n"

    printf "pyvenv create <name of new virtual environment> [any other arguments for virtualenv]\n"
    printf "\t Example: pyvenv create newvir --python=/usr/bin/python3 \n\n"

    printf "source pyvenv start <name of virtual environment> : This command needs to be preceeded with 'source' or a '.' to make it run in the same terminal\n\n"
}

pyvenv_init() {

    echo "Please give full path to the directory where you would like me to store all the virtual environments"
    echo "default is $HOME/.pyvenv/"

    read dir_path

    if [ -z "$dir_path" ]; then
        dir_path=$HOME/.pyvenv/ 
    fi

    mkdir -p $dir_path

    bak_name=`date +%s`
    echo "Making a backup copy of bashrc with name .bashrc.$bak_name.bak in case anything goes wrong"
    cp $HOME/.bashrc $HOME/.bashrc.$bak_name.bak

    echo "export PYVENV_DIR=$dir_path" >> ~/.bashrc

    echo "sudo privileges may be required to install the script into /usr/local/bin"

    sudo cp -i "$PWD/pyvenv.sh" "/usr/local/bin/pyvenv"

    

    echo "Script installed. "
    echo "type > pyvenv help to know how to use the command"

    echo -n

    echo "run source ~/.bashrc if you want to use command in this same terminal instance"
}

pyvenv_create() {
    if [ $# -lt 1 ]; then
        echo "Error: name of virtual environment not given"
        pyvenv_help
    else
        vir_path="$PYVENV_DIR/$1"
        echo $vir_path
        virtualenv $vir_path "${@:2}"
    fi

}

pyvenv_start() {

    if [ $# -lt 1 ]; then
        echo "Usage: source pyvenv start <name of virtual environment>"
            
    else

        vir_path=$PYVENV_DIR/$1
        echo $vir_path
        
        if [ ! -d $vir_path ]; then
            echo "Virtual Environment of this name does not exist "     
            
        else
            echo "Starting "$1 "..."
            source $vir_path/bin/activate
            echo "If the Virtual Environment does not start , ensure you are starting pyvenv by preceding with 'source' or a '.'"
            echo "Example : "
            echo ". pyvenv start <name of virtual environment> "
            echo "source pyvenv start <name of virtual environment>" 
        fi
    fi

}


if [ $# -lt 1 ]; then
    pyvenv_help

elif [ $1 == "help" ]; then
    pyvenv_help

elif [ $1 == "start" ]; then
    pyvenv_start "${@:2}"

elif [ $1 == "create" ]; then
    pyvenv_create "${@:2}"

elif [ $1 == "init" ]; then
    pyvenv_init "${@:2}"

else 
    pyvenv_help
fi
