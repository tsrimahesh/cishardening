class cishardening::sysctl {

 # Securizar
sysctl::value {"net.ipv4.ip_forward": value => "0"}

# Ignore ICMP broadcast requests
sysctl::value {"net.ipv4.icmp_echo_ignore_broadcasts": value => "1"}

# Disable source packet routing
sysctl::value {"net.ipv4.conf.all.accept_source_route": value => "0"}
sysctl::value {"net.ipv4.conf.default.accept_source_route" : value  => "0"}

# Ignore send redirects
sysctl::value {"net.ipv4.conf.all.send_redirects": value => "0"}
sysctl::value {"net.ipv4.conf.default.send_redirects": value => "0"}

# Block SYN attacks
sysctl::value {"net.ipv4.tcp_max_syn_backlog": value => "2048"}
sysctl::value {"net.ipv4.tcp_synack_retries": value => "2"}
sysctl::value {"net.ipv4.tcp_syn_retries" : value  => "5"}

# Log Martians
sysctl::value {"net.ipv4.conf.all.log_martians" : value => "1"}
sysctl::value {"net.ipv4.icmp_ignore_bogus_error_responses" : value => "1"}

# Ignore ICMP redirects
sysctl::value {"net.ipv4.conf.all.accept_redirects" : value => "0"}
sysctl::value {"net.ipv4.conf.default.accept_redirects": value => "0"}
sysctl::value {"net.ipv4.tcp_timestamps": value => "0"}


}
