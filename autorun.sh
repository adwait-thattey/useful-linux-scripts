#!/usr/bin/expect

# Get the password from the environment variable
set password $env(SUDO_PASS)

# Set timeout value to -1 for infinite timeout
set timeout 30

# Spawn the sudo command
#spawn [lrange $argv 1 end]
spawn yay -Syyu

# Expect the password prompt and send the password
expect {
    "*password for*" {
        #puts "$password"
        after 1000;
        send "$password"
        send "\r"
        exp_continue
    }
    timeout {
        send "\r";
        exp_continue
    }
    eof
}

# Wait for the command to finish
wait
