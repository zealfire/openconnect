openconnect
=================
The reason behind developing this tool was to automate the process of connecting to VPN. My daily work required me to connect to a VPN, Cisco AnyConnect client was the obvious choice but I was facing some issues installing the same in ubuntu so instead I choosed openconnect. Using this I am able to connect to vpn via few mouse clicks.

## System Requirements ##

Currently I have tested this only on ubuntu 16.04, hopefully in coming days I will be adding installation instruction for other OS too.

## Installation ##

1. Install expect using this command: <code>sudo apt-get install expect</code>

2. Steps for installing openconnect: <br>
	1. First run command below to active th TUN module: <code>sudo /sbin/modprobe tun</code>
	2. Install OpenConnect: <code>sudo apt-get install openconnect</code>

3. Download this module and make openconnect script executable like this:
   <code>chmod +x /path/to/openconnect.sh</code>

4. Run the script like this:
	<code>./openconnect.sh</code>, this is when you are in the root directory of the module otherwise add path to your module.

5. Now we have to install Nautilus-Actions Configuration Tool, type this in the terminal:
	<code>sudo apt-get install nautilus-actions</code>

6. Launch the Nautilus-Actions Configuration Tool from the Dash after installing it.

7. First, click the New Action button on the toolbar and type the name of your action into the Context Label box, may be something like this: *Connect to VPN*

8. Click the Command tab and in Label box enter any suitable name like *VPN* and in Path box this: */usr/local/bin/vpn*

9. Since we would need terminal for executing our newly created vpn command, in nautilus-actions tool, go to Edit > Preferences > Runtime Execution. In the "command pattern" field, enter: gnome-terminal -x sh -c COMMAND

10. Now we need to restart nautilus typing this command in the terminal: <code>nautilus -q</code>

11. After this you can access your newly created vpn command on right clicking under Nautilus-Actions actions.

Happy browsing :smiley: