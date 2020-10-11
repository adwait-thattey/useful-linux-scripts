set -a
source ./aliases_dict.sh
set +a


cat >./aliases.sh << EOL
#!/bin/bash

EOL

for key in "${!alias_dict[@]}"
do
    cat >>./aliases.sh << EOL

# params=()
#     for i; do params+="\${i@Q} "; done;

$key() {
    
    echo "${alias_dict[$key]}" "\$@"
    ${alias_dict[$key]} "\$@"
}


EOL
done

sudo cp ./aliases.sh /usr/local/bin/aliases

