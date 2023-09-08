set -a
source ./aliases_dict.sh
set +a


cat >./aliases.sh << EOL
#!/bin/bash

EOL

for key in "${!alias_dict[@]}"
do
    cat >>./aliases.sh << EOL

$key() {
    
    echo "${alias_dict[$key]}" "\$@"
    ${alias_dict[$key]} "\$@"
}


EOL
done

cat >>./aliases.sh << EOLL

gen_git_autocompletions() {
	. /usr/share/bash-completion/completions/git

	__git_complete ga _git_add
	__git_complete gck _git_checkout
}

gen_git_autocompletions

EOLL

sudo cp ./aliases.sh /usr/local/bin/aliases

