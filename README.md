messWithBash.sh:

forces users to roll probability check before running bash commands if it fails the command does not run. 

also creates a copy of the original bash.bashrc file called bash.bashrc.bak


Steps to implement:
1. pull script to device
2. "sudo bash messWithBash.sh"
3. "sudo source /etc/bash.bashrc"

use "+++" to skip check. 
still prints command not found after command is run when using key to skip check.

Steps to remove:
1. "sudo source /etc/bash.bashrc.bak"
