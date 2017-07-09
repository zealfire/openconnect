openconnect
=================
The reason behind developing this tool was to automate the process of connecting to VPN. My daily work required me to connect to a VPN, Cisco anyconnect client was the obvious choice but I was facing some issues installing the same in ubuntu so instead I choosed openconnect instead. Now with this tool I am able to connect to vpn in single mouse click.

## System Requirements ##

Currently I have tested this only on ubuntu 16.04, hopefully in coming days I will be adding installation instruction for other OS too.

## Installation ##

1. Download this module and make openconnect script executable like this:
   <code>chmod +x /path/to/openconnect.sh</code>
2. Run the script like this:
	<code>./openconnect.sh</code>
3. Now we have to install Nautilus-Actions Configuration Tool, type this in the terminal:
	<code>sudo apt-get install nautilus-actions</code>
4. Launch the Nautilus-Actions Configuration Tool from the Dash after installing it.

5. First, click the New Action button on the toolbar and type the name of your action into the Context Label box.

6. Click the Command tab and in Label box enter any suitable name like VPN and in Path box this: /usr/local/bin/vpn

7. Since we would need terminal for executing our newly created vpn command, in nautilus-actions tool, go to Edit > Preferences > Runtime Execution. In the "command pattern" field, enter: gnome-terminal -x sh -c COMMAND