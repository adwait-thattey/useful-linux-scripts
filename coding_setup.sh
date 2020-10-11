print_help() {
    echo "There are 2 available commands 'gp' and 'gpp' "
    echo "Usage:"
    echo "       gccpp [code-file] [input-file]"
    echo "       OR"
    echo "       gccp [code-file] [input-file]"
    echo "gccpp runs faster but does not check for errors like memory leaks"
    echo "gccp runs slower but checks for all errors"
    echo ""
    
    echo "List of available parameters:"
    
    echo "--version=[version-number] : Uses the specified c++ version. Default is 17"
    echo "                             Example: gpp code.cpp --version=14"

    echo ""

    echo "--noclean : Does not delete the output binary file after completion." 
    echo "            By default the result.out file is deleted"

    echo ""
    
    echo "--output=[file_name] : Name of the output file. Default: result.out" 
    echo "                       Use along with --noclean to ensure file is not deleted"


}
filter_inp() {
    #set defaults and arrays
    files=()
    params=()
    gppversion=17
    out_file="result.out"

    for item in $@
    do
        # echo $item
        if [[ $item == --* ]] ;
        then
            # echo "param found $item"
            params+=( "${item:2}" )
        else
            # echo "file found $item"
            files+=( $item )
        fi
    done

    # echo ${params[@]}
    
}

preprocess_params() {
    for param in ${params[@]}
    do
        case $param in
        help)
                    print_help
                    ;;
        version=*)
                    gppversion="${param:8}"
                    ;;
        output=*)
                    out_file="${param:7}"
                    ;;
        esac
    done

    #print g++ version being used
    if [ ${#files[@]} -gt 0 ]; then
        echo "g++ version $gppversion"
    fi
}

postprocess_params() {
    clean=true

    for param in ${params[@]}
    do
        case $param in
        noclean)
                    clean=false
                    ;;
        esac
    done



    #print g++ version being used
    if [ "$clean" = true ]; then
        if [[ -f $out_file ]]
        then
            rm $out_file
        fi
    fi
}

set -a

gccpp() {

    filter_inp "$@"
    preprocess_params
    case ${#files[@]} in
    0) 
        if [ ${#params[@]} -eq 0 ]; then
        echo "Usage: gccpp <code_file> [input_file] [parameters]"
        echo "Run gccpp --help to get full list of params"
        fi
        ;;
    1)
        g++ --std=c++$gppversion -Wshadow -Wall -o $out_file ${files[0]} -O2 -Wno-unused-result && 
        time ./result.out
        ;;
    2)
        g++ --std=c++$gppversion -Wshadow -Wall -o $out_file ${files[0]} -O2 -Wno-unused-result && \
        time sh -c " cat ${files[1]} | ./result.out " 
        ;;
    esac

    postprocess_params
}       

gccp() {

    filter_inp "$@"
    preprocess_params

    case ${#files[@]} in
    0) 
        echo "Usage: gccp <code_file> [input_file] [parameters]"
        echo "Run gccp --help to get full list of params"
        ;;
    1)
        g++ --std=c++$gppversion -Wshadow -Wall -o $out_file ${files[0]} -g -fsanitize=address -fsanitize=undefined -D_GLIBCXX_DEBUG && \
        time ./result.out
        ;;
    2)
        g++ --std=c++$gppversion -Wshadow -Wall -o $out_file ${files[0]} -g -fsanitize=address -fsanitize=undefined -D_GLIBCXX_DEBUG && \
        time sh -c " cat ${files[1]} | ./result.out " 
        ;;
    esac

    postprocess_params
}


set +a
