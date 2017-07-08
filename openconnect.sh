cat > vpn << EOF
#!/usr/bin/expect -f
set timeout -1
spawn openconnect GATEWAY
expect "Enter 'yes' to accept, 'no' to abort; anything else to view:" {send -- "yes\r"}
expect "Username:" {send -- "USERNAME\r"}
expect "Password:" {send -- "PASSWORD\r"}
expect eof
EOF
chmod +x vpn
sudo mv vpn /usr/local/bin/