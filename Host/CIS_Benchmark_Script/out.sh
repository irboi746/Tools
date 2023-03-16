echo "[1 Initial Setup]" >> CISOut.txt
echo "[1.1 Filesystem Configuration]" >> CISOut.txt
echo "[1.1.1 Disable unused filesystems]" >> CISOut.txt
echo "[1.1.1.1 Ensure mounting of cramfs filesystems is disabled (Automated)]" >> CISOut.txt
echo "[1.1.1.2 Ensure mounting of squashfs filesystems is disabled (Automated)]" >> CISOut.txt
echo "[1.1.1.3 Ensure mounting of udf filesystems is disabled (Automated)]" >> CISOut.txt
echo "[1.1.2 Configure /tmp1.1.2.1 Ensure /tmp is a separate partition (Automated)]" >> CISOut.txt
echo "[1.1.2.2 Ensure nodev option set on /tmp partition (Automated)]" >> CISOut.txt
echo "[1.1.2.3 Ensure noexec option set on /tmp partition (Automated)]" >> CISOut.txt
echo "[1.1.2.4 Ensure nosuid option set on /tmp partition (Automated)]" >> CISOut.txt
echo "[1.1.3 Configure /var1.1.3.1 Ensure separate partition exists for /var (Automated)]" >> CISOut.txt
echo "[1.1.3.2 Ensure nodev option set on /var partition (Automated)]" >> CISOut.txt
echo "[1.1.3.3 Ensure nosuid option set on /var partition (Automated)]" >> CISOut.txt
echo "[1.1.4 Configure /var/tmp1.1.4.1 Ensure separate partition exists for /var/tmp (Automated)]" >> CISOut.txt
echo "[1.1.4.2 Ensure noexec option set on /var/tmp partition (Automated)]" >> CISOut.txt
echo "[1.1.4.3 Ensure nosuid option set on /var/tmp partition (Automated)]" >> CISOut.txt
echo "[1.1.4.4 Ensure nodev option set on /var/tmp partition (Automated)]" >> CISOut.txt
echo "[1.1.5 Configure /var/log1.1.5.1 Ensure separate partition exists for /var/log (Automated)]" >> CISOut.txt
echo "[1.1.5.2 Ensure nodev option set on /var/log partition (Automated)]" >> CISOut.txt
echo "[1.1.5.3 Ensure noexec option set on /var/log partition (Automated)]" >> CISOut.txt
echo "[1.1.5.4 Ensure nosuid option set on /var/log partition (Automated)]" >> CISOut.txt
echo "[1.1.6 Configure /var/log/audit1.1.6.1 Ensure separate partition exists for /var/log/audit (Automated)]" >> CISOut.txt
echo "[1.1.6.2 Ensure noexec option set on /var/log/audit partition (Automated)]" >> CISOut.txt
echo "[1.1.6.3 Ensure nodev option set on /var/log/audit partition (Automated)]" >> CISOut.txt
echo "[1.1.6.4 Ensure nosuid option set on /var/log/audit partition (Automated)]" >> CISOut.txt
echo "[1.1.7 Configure /home1.1.7.1 Ensure separate partition exists for /home (Automated)]" >> CISOut.txt
echo "[1.1.7.2 Ensure nodev option set on /home partition (Automated)]" >> CISOut.txt
echo "[1.1.7.3 Ensure nosuid option set on /home partition (Automated)]" >> CISOut.txt
echo "[1.1.8 Configure /dev/shm]" >> CISOut.txt
echo "[1.1.8.1 Ensure nodev option set on /dev/shm partition (Automated)]" >> CISOut.txt
echo "[1.1.8.2 Ensure noexec option set on /dev/shm partition (Automated)]" >> CISOut.txt
echo "[1.1.8.3 Ensure nosuid option set on /dev/shm partition (Automated)]" >> CISOut.txt
echo "[1.1.9 Disable Automounting (Automated)]" >> CISOut.txt
echo "[1.1.10 Disable USB Storage (Automated)]" >> CISOut.txt
echo "[1.2 Configure Software Updates]" >> CISOut.txt
echo "[1.2.1 Ensure package manager repositories are configured (Manual)]" >> CISOut.txt
echo "[1.2.2 Ensure GPG keys are configured (Manual)]" >> CISOut.txt
echo "[1.3 Filesystem Integrity Checking1.3.1 Ensure AIDE is installed (Automated)]" >> CISOut.txt
echo "[1.3.2 Ensure filesystem integrity is regularly checked (Automated)]" >> CISOut.txt
echo "[1.4 Secure Boot Settings1.4.1 Ensure bootloader password is set (Automated)]" >> CISOut.txt
echo "[1.4.2 Ensure permissions on bootloader config are configured (Automated)]" >> CISOut.txt
echo "[1.4.3 Ensure authentication required for single user mode (Automated)]" >> CISOut.txt
echo "[1.5 Additional Process Hardening1.5.1 Ensure address space layout randomization (ASLR) is enabled (Automated)]" >> CISOut.txt
echo "[1.5.2 Ensure prelink is not installed (Automated)]" >> CISOut.txt
echo "[1.5.3 Ensure Automatic Error Reporting is not enabled (Automated)]" >> CISOut.txt
echo "[1.5.4 Ensure core dumps are restricted (Automated)]" >> CISOut.txt
echo "[1.6 Mandatory Access Control1.6.1 Configure AppArmor]" >> CISOut.txt
echo "[1.6.1.1 Ensure AppArmor is installed (Automated)]" >> CISOut.txt
echo "[1.6.1.2 Ensure AppArmor is enabled in the bootloader configuration (Automated)]" >> CISOut.txt
echo "[1.6.1.3 Ensure all AppArmor Profiles are in enforce or complain mode (Automated)]" >> CISOut.txt
echo "[1.6.1.4 Ensure all AppArmor Profiles are enforcing (Automated)]" >> CISOut.txt
echo "[1.7 Command Line Warning Banners1.7.1 Ensure message of the day is configured properly (Automated)]" >> CISOut.txt
echo "[1.7.2 Ensure local login warning banner is configured properly (Automated)]" >> CISOut.txt
echo "[1.7.3 Ensure remote login warning banner is configured properly (Automated)]" >> CISOut.txt
echo "[1.7.4 Ensure permissions on /etc/motd are configured (Automated)]" >> CISOut.txt
echo "[1.7.5 Ensure permissions on /etc/issue are configured (Automated)]" >> CISOut.txt
echo "[1.7.6 Ensure permissions on /etc/issue.net are configured (Automated)]" >> CISOut.txt
echo "[1.8 GNOME Display Manager]" >> CISOut.txt
echo "[1.8.1 Ensure GNOME Display Manager is removed (Automated)]" >> CISOut.txt
echo "[1.8.2 Ensure GDM login banner is configured (Automated)]" >> CISOut.txt
echo "[1.8.3 Ensure GDM disable-user-list option is enabled (Automated)]" >> CISOut.txt
echo "[1.8.4 Ensure GDM screen locks when the user is idle (Automated)]" >> CISOut.txt
echo "[1.8.5 Ensure GDM screen locks cannot be overridden (Automated)]" >> CISOut.txt
echo "[1.8.6 Ensure GDM automatic mounting of removable media is disabled (Automated)]" >> CISOut.txt
echo "[1.8.7 Ensure GDM disabling automatic mounting of removable media is not overridden (Automated)]" >> CISOut.txt
echo "[1.8.8 Ensure GDM autorun-never is enabled (Automated)]" >> CISOut.txt
echo "[1.8.9 Ensure GDM autorun-never is not overridden (Automated)]" >> CISOut.txt
echo "[1.8.10 Ensure XDCMP is not enabled (Automated)]" >> CISOut.txt
echo "[1.9 Ensure updates, patches, and additional security software are installed (Manual)]" >> CISOut.txt
echo "[2 Services]" >> CISOut.txt
echo "[2.1 Configure Time Synchronization]" >> CISOut.txt
echo "[2.1.1 Ensure time synchronization is in use2.1.1.1 Ensure a single time synchronization daemon is in use (Automated)]" >> CISOut.txt
echo "[2.1.2 Configure chrony]" >> CISOut.txt
echo "[2.1.2.1 Ensure chrony is configured with authorized timeserver (Manual)]" >> CISOut.txt
echo "[2.1.2.2 Ensure chrony is running as user _chrony (Automated)]" >> CISOut.txt
echo "[2.1.2.3 Ensure chrony is enabled and running (Automated)]" >> CISOut.txt
echo "[2.1.3 Configure systemd-timesyncd2.1.3.1 Ensure systemd-timesyncd configured with authorized timeserver (Manual)]" >> CISOut.txt
echo "[2.1.3.2 Ensure systemd-timesyncd is enabled and running (Automated)]" >> CISOut.txt
echo "[2.1.4 Configure ntp2.1.4.1 Ensure ntp access control is configured (Automated)]" >> CISOut.txt
echo "[2.1.4.2 Ensure ntp is configured with authorized timeserver (Manual)]" >> CISOut.txt
echo "[2.1.4.3 Ensure ntp is running as user ntp (Automated)]" >> CISOut.txt
echo "[2.1.4.4 Ensure ntp is enabled and running (Automated)]" >> CISOut.txt
echo "[2.2 Special Purpose Services2.2.1 Ensure X Window System is not installed (Automated)]" >> CISOut.txt
echo "[2.2.2 Ensure Avahi Server is not installed (Automated)]" >> CISOut.txt
echo "[2.2.3 Ensure CUPS is not installed (Automated)]" >> CISOut.txt
echo "[2.2.4 Ensure DHCP Server is not installed (Automated)]" >> CISOut.txt
echo "[2.2.5 Ensure LDAP server is not installed (Automated)]" >> CISOut.txt
echo "[2.2.6 Ensure NFS is not installed (Automated)]" >> CISOut.txt
echo "[2.2.7 Ensure DNS Server is not installed (Automated)]" >> CISOut.txt
echo "[2.2.8 Ensure FTP Server is not installed (Automated)]" >> CISOut.txt
echo "[2.2.9 Ensure HTTP server is not installed (Automated)]" >> CISOut.txt
echo "[2.2.10 Ensure IMAP and POP3 server are not installed (Automated)]" >> CISOut.txt
echo "[2.2.11 Ensure Samba is not installed (Automated)]" >> CISOut.txt
echo "[2.2.12 Ensure HTTP Proxy Server is not installed (Automated)]" >> CISOut.txt
echo "[2.2.13 Ensure SNMP Server is not installed (Automated)]" >> CISOut.txt
echo "[2.2.14 Ensure NIS Server is not installed (Automated)]" >> CISOut.txt
echo "[2.2.15 Ensure mail transfer agent is configured for local-only mode (Automated)]" >> CISOut.txt
echo "[2.2.16 Ensure rsync service is either not installed or masked (Automated)]" >> CISOut.txt
echo "[2.3 Service Clients2.3.1 Ensure NIS Client is not installed (Automated)]" >> CISOut.txt
echo "[2.3.2 Ensure rsh client is not installed (Automated)]" >> CISOut.txt
echo "[2.3.3 Ensure talk client is not installed (Automated)]" >> CISOut.txt
echo "[2.3.4 Ensure telnet client is not installed (Automated)]" >> CISOut.txt
echo "[2.3.5 Ensure LDAP client is not installed (Automated)]" >> CISOut.txt
echo "[2.3.6 Ensure RPC is not installed (Automated)]" >> CISOut.txt
echo "[2.4 Ensure nonessential services are removed or masked (Manual)]" >> CISOut.txt
echo "[3 Network Configuration3.1 Disable unused network protocols and devices]" >> CISOut.txt
echo "[3.1 Disable unused network protocols and devices]" >> CISOut.txt
echo "[3.1.1 Ensure system is checked to determine if IPv6 is enabled (Manual)]" >> CISOut.txt
echo "[3.1.2 Ensure wireless interfaces are disabled (Automated)]" >> CISOut.txt
echo "[3.2 Network Parameters (Host Only)3.2.1 Ensure packet redirect sending is disabled (Automated)]" >> CISOut.txt
echo "[3.2.2 Ensure IP forwarding is disabled (Automated)]" >> CISOut.txt
echo "[3.3 Network Parameters (Host and Router)]" >> CISOut.txt
echo "[3.3.1 Ensure source routed packets are not accepted (Automated)]" >> CISOut.txt
echo "[3.3.2 Ensure ICMP redirects are not accepted (Automated)]" >> CISOut.txt
echo "[3.3.3 Ensure secure ICMP redirects are not accepted (Automated)]" >> CISOut.txt
echo "[3.3.4 Ensure suspicious packets are logged (Automated)]" >> CISOut.txt
echo "[3.3.5 Ensure broadcast ICMP requests are ignored (Automated)]" >> CISOut.txt
echo "[3.3.6 Ensure bogus ICMP responses are ignored (Automated)]" >> CISOut.txt
echo "[3.3.7 Ensure Reverse Path Filtering is enabled (Automated)]" >> CISOut.txt
echo "[3.3.8 Ensure TCP SYN Cookies is enabled (Automated)]" >> CISOut.txt
echo "[3.3.9 Ensure IPv6 router advertisements are not accepted (Automated)]" >> CISOut.txt
echo "[3.4 Uncommon Network Protocols3.4.1 Ensure DCCP is disabled (Automated)]" >> CISOut.txt
echo "[3.4.2 Ensure SCTP is disabled (Automated)]" >> CISOut.txt
echo "[3.4.3 Ensure RDS is disabled (Automated)]" >> CISOut.txt
echo "[3.4.4 Ensure TIPC is disabled (Automated)3.5 Firewall Configuration3.5.1 Configure UncomplicatedFirewall3.5.1.1 Ensure ufw is installed (Automated)]" >> CISOut.txt
echo "[3.5.1.2 Ensure iptables-persistent is not installed with ufw (Automated)]" >> CISOut.txt
echo "[3.5.1.3 Ensure ufw service is enabled (Automated)]" >> CISOut.txt
echo "[3.5.1.4 Ensure ufw loopback traffic is configured (Automated)]" >> CISOut.txt
echo "[3.5.1.5 Ensure ufw outbound connections are configured (Manual)]" >> CISOut.txt
echo "[3.5.1.6 Ensure ufw firewall rules exist for all open ports (Automated)]" >> CISOut.txt
echo "[3.5.1.7 Ensure ufw default deny firewall policy (Automated)]" >> CISOut.txt
echo "[3.5.2 Configure nftables3.5.2.1 Ensure nftables is installed (Automated)]" >> CISOut.txt
echo "[3.5.2.2 Ensure ufw is uninstalled or disabled with nftables (Automated)]" >> CISOut.txt
echo "[3.5.2.3 Ensure iptables are flushed with nftables (Manual)]" >> CISOut.txt
echo "[3.5.2.4 Ensure a nftables table exists (Automated)]" >> CISOut.txt
echo "[3.5.2.5 Ensure nftables base chains exist (Automated)]" >> CISOut.txt
echo "[3.5.2.6 Ensure nftables loopback traffic is configured (Automated)]" >> CISOut.txt
echo "[3.5.2.7 Ensure nftables outbound and established connections are configured (Manual)]" >> CISOut.txt
echo "[3.5.2.8 Ensure nftables default deny firewall policy (Automated)]" >> CISOut.txt
echo "[3.5.2.9 Ensure nftables service is enabled (Automated)]" >> CISOut.txt
echo "[3.5.2.10 Ensure nftables rules are permanent (Automated)]" >> CISOut.txt
echo "[3.5.3 Configure iptables3.5.3.1 Configure iptables software3.5.3.1.1 Ensure iptables packages are installed (Automated)]" >> CISOut.txt
echo "[3.5.3.1.2 Ensure nftables is not installed with iptables (Automated)]" >> CISOut.txt
echo "[3.5.3.1.3 Ensure ufw is uninstalled or disabled with iptables (Automated)]" >> CISOut.txt
echo "[3.5.3.2 Configure IPv4 iptables3.5.3.2.1 Ensure iptables default deny firewall policy (Automated)]" >> CISOut.txt
echo "[3.5.3.2.2 Ensure iptables loopback traffic is configured (Automated)]" >> CISOut.txt
echo "[3.5.3.2.3 Ensure iptables outbound and established connections are configured (Manual)]" >> CISOut.txt
echo "[3.5.3.2.4 Ensure iptables firewall rules exist for all open ports (Automated)]" >> CISOut.txt
echo "[3.5.3.3 Configure IPv6 ip6 tables3.5.3.3.1 Ensure ip6 tables default deny firewall policy (Automated)]" >> CISOut.txt
echo "[3.5.3.3.2 Ensure ip6 tables loopback traffic is configured (Automated)]" >> CISOut.txt
echo "[3.5.3.3.3 Ensure ip6 tables outbound and established connections are configured (Manual)]" >> CISOut.txt
echo "[3.5.3.3.4 Ensure ip6 tables firewall rules exist for all open ports (Automated)]" >> CISOut.txt
echo "[4 Logging and Auditing4.1 Configure System Accounting (auditd)]" >> CISOut.txt
echo "[4.1.1 Ensure auditing is enabled4.1.1.1 Ensure auditd is installed (Automated)]" >> CISOut.txt
echo "[4.1.1.2 Ensure auditd service is enabled and active (Automated)]" >> CISOut.txt
echo "[4.1.1.3 Ensure auditing for processes that start prior to auditd is enabled (Automated)]" >> CISOut.txt
echo "[4.1.1.4 Ensure audit_backlog_limit is sufficient (Automated)]" >> CISOut.txt
echo "[4.1.2 Configure Data Retention4.1.2.1 Ensure audit log storage size is configured (Automated)]" >> CISOut.txt
echo "[4.1.2.2 Ensure audit logs are not automatically deleted (Automated)]" >> CISOut.txt
echo "[4.1.2.3 Ensure system is disabled when audit logs are full (Automated)]" >> CISOut.txt
echo "[4.1.3 Configure auditd rules4.1.3.1 Ensure changes to system administration scope (sudoers) is collected (Automated)]" >> CISOut.txt
echo "[4.1.3.2 Ensure actions as another user are always logged (Automated)]" >> CISOut.txt
echo "[4.1.3.3 Ensure events that modify the sudo log file are collected (Automated)]" >> CISOut.txt
echo "[4.1.3.4 Ensure events that modify date and time information are collected (Automated)]" >> CISOut.txt
echo "[4.1.3.5 Ensure events that modify the system's network environment are collected (Automated)]" >> CISOut.txt
echo "[4.1.3.6 Ensure use of privileged commands are collected (Automated)]" >> CISOut.txt
echo "[4.1.3.7 Ensure unsuccessful file access attempts are collected (Automated)]" >> CISOut.txt
echo "[4.1.3.8 Ensure events that modify user/group information are collected (Automated)]" >> CISOut.txt
echo "[4.1.3.9 Ensure discretionary access control permission modification events are collected (Automated)]" >> CISOut.txt
echo "[4.1.3.10 Ensure successful file system mounts are collected (Automated)]" >> CISOut.txt
echo "[4.1.3.11 Ensure session initiation information is collected (Automated)]" >> CISOut.txt
echo "[4.1.3.12 Ensure login and logout events are collected (Automated)]" >> CISOut.txt
echo "[4.1.3.13 Ensure file deletion events by users are collected (Automated)]" >> CISOut.txt
echo "[4.1.3.14 Ensure events that modify the system's Mandatory Access Controls are collected (Automated)]" >> CISOut.txt
echo "[4.1.3.15 Ensure successful and unsuccessful attempts to use the chcon command are recorded (Automated)]" >> CISOut.txt
echo "[4.1.3.16 Ensure successful and unsuccessful attempts to use the setfacl command are recorded (Automated)]" >> CISOut.txt
echo "[4.1.3.17 Ensure successful and unsuccessful attempts to use the chacl command are recorded (Automated)]" >> CISOut.txt
echo "[4.1.3.18 Ensure successful and unsuccessful attempts to use the usermod command are recorded (Automated)]" >> CISOut.txt
echo "[4.1.3.19 Ensure kernel module loading unloading and modification is collected (Automated)]" >> CISOut.txt
echo "[4.1.3.20 Ensure the audit configuration is immutable (Automated)]" >> CISOut.txt
echo "[4.1.3.21 Ensure the running and on disk configuration is the same (Manual)]" >> CISOut.txt
echo "[4.1.4 Configure auditd file access4.1.4.1 Ensure audit log files are mode 0640 or less permissive (Automated)]" >> CISOut.txt
echo "[4.1.4.2 Ensure only authorized users own audit log files (Automated)]" >> CISOut.txt
echo "[4.1.4.3 Ensure only authorized groups are assigned ownership of audit log files (Automated)]" >> CISOut.txt
echo "[4.1.4.4 Ensure the audit log directory is 0750 or more restrictive (Automated)]" >> CISOut.txt
echo "[4.1.4.5 Ensure audit configuration files are 640 or more restrictive (Automated)]" >> CISOut.txt
echo "[4.1.4.6 Ensure audit configuration files are owned by root (Automated)]" >> CISOut.txt
echo "[4.1.4.7 Ensure audit configuration files belong to group root (Automated)]" >> CISOut.txt
echo "[4.1.4.8 Ensure audit tools are 755 or more restrictive (Automated)]" >> CISOut.txt
echo "[4.1.4.9 Ensure audit tools are owned by root (Automated)]" >> CISOut.txt
echo "[4.1.4.10 Ensure audit tools belong to group root (Automated)]" >> CISOut.txt
echo "[4.1.4.11 Ensure cryptographic mechanisms are used to protect the integrity of audit tools (Automated)]" >> CISOut.txt
echo "[4.2 Configure Logging]" >> CISOut.txt
echo "[4.2.1 Configure journald]" >> CISOut.txt
echo "[4.2.1.1 Ensure journald is configured to send logs to a remote log host]" >> CISOut.txt
echo "[4.2.1.1.1 Ensure systemd-journal-remote is installed (Automated)]" >> CISOut.txt
echo "[4.2.1.1.2 Ensure systemd-journal-remote is configured (Manual)]" >> CISOut.txt
echo "[4.2.1.1.3 Ensure systemd-journal-remote is enabled (Manual)]" >> CISOut.txt
echo "[4.2.1.1.4 Ensure journald is not configured to recieve logs from a remote client (Automated)]" >> CISOut.txt
echo "[4.2.1.2 Ensure journald service is enabled (Automated)]" >> CISOut.txt
echo "[4.2.1.3 Ensure journald is configured to compress large log files (Automated)]" >> CISOut.txt
echo "[4.2.1.4 Ensure journald is configured to write logfiles to persistent disk (Automated)]" >> CISOut.txt
echo "[4.2.1.5 Ensure journald is not configured to send logs to rsyslog (Manual)]" >> CISOut.txt
echo "[4.2.1.6 Ensure journald log rotation is configured per site policy (Manual)]" >> CISOut.txt
echo "[4.2.1.7 Ensure journald default file permissions configured (Manual)]" >> CISOut.txt
echo "[4.2.2 Configure rsyslog]" >> CISOut.txt
echo "[4.2.2.1 Ensure rsyslog is installed (Automated)]" >> CISOut.txt
echo "[4.2.2.2 Ensure rsyslog service is enabled (Automated)]" >> CISOut.txt
echo "[4.2.2.3 Ensure journald is configured to send logs to rsyslog (Manual)]" >> CISOut.txt
echo "[4.2.2.4 Ensure rsyslog default file permissions are configured (Automated)]" >> CISOut.txt
echo "[4.2.2.5 Ensure logging is configured (Manual)]" >> CISOut.txt
echo "[4.2.2.6 Ensure rsyslog is configured to send logs to a remote log host (Manual)]" >> CISOut.txt
echo "[4.2.2.7 Ensure rsyslog is not configured to receive logs from a remote client (Automated)]" >> CISOut.txt
echo "[4.2.3 Ensure all logfiles have appropriate permissions and ownership (Automated)]" >> CISOut.txt
echo "[5 Access, Authentication and Authorization5.1 Configure time-based job schedulers]" >> CISOut.txt
echo "[5.1.1 Ensure cron daemon is enabled and running (Automated)]" >> CISOut.txt
echo "[5.1.2 Ensure permissions on /etc/crontab are configured (Automated)]" >> CISOut.txt
echo "[5.1.3 Ensure permissions on /etc/cron.hourly are configured (Automated)]" >> CISOut.txt
echo "[5.1.4 Ensure permissions on /etc/cron.daily are configured (Automated)]" >> CISOut.txt
echo "[5.1.5 Ensure permissions on /etc/cron.weekly are configured (Automated)]" >> CISOut.txt
echo "[5.1.6 Ensure permissions on /etc/cron.monthly are configured (Automated)]" >> CISOut.txt
echo "[5.1.7 Ensure permissions on /etc/cron.d are configured (Automated)]" >> CISOut.txt
echo "[5.1.8 Ensure cron is restricted to authorized users (Automated)]" >> CISOut.txt
echo "[5.1.9 Ensure at is restricted to authorized users (Automated)]" >> CISOut.txt
echo "[5.2 Configure SSH Server]" >> CISOut.txt
echo "[5.2.1 Ensure permissions on /etc/ssh/sshd_config are configured (Automated)]" >> CISOut.txt
echo "[5.2.2 Ensure permissions on SSH private host key files are configured (Automated)]" >> CISOut.txt
echo "[5.2.3 Ensure permissions on SSH public host key files are configured (Automated)]" >> CISOut.txt
echo "[5.2.4 Ensure SSH access is limited (Automated)]" >> CISOut.txt
echo "[5.2.5 Ensure SSH LogLevel is appropriate (Automated)]" >> CISOut.txt
echo "[5.2.6 Ensure SSH PAM is enabled (Automated)]" >> CISOut.txt
echo "[5.2.7 Ensure SSH root login is disabled (Automated)]" >> CISOut.txt
echo "[5.2.8 Ensure SSH HostbasedAuthentication is disabled (Automated)]" >> CISOut.txt
echo "[5.2.9 Ensure SSH PermitEmptyPasswords is disabled (Automated)]" >> CISOut.txt
echo "[5.2.10 Ensure SSH PermitUserEnvironment is disabled (Automated)]" >> CISOut.txt
echo "[5.2.11 Ensure SSH IgnoreRhosts is enabled (Automated)]" >> CISOut.txt
echo "[5.2.12 Ensure SSH X11 forwarding is disabled (Automated)]" >> CISOut.txt
echo "[5.2.13 Ensure only strong Ciphers are used (Automated)]" >> CISOut.txt
echo "[5.2.14 Ensure only strong MAC algorithms are used (Automated)]" >> CISOut.txt
echo "[5.2.15 Ensure only strong Key Exchange algorithms are used (Automated)]" >> CISOut.txt
echo "[5.2.16 Ensure SSH AllowTcpForwarding is disabled (Automated)]" >> CISOut.txt
echo "[5.2.17 Ensure SSH warning banner is configured (Automated)]" >> CISOut.txt
echo "[5.2.18 Ensure SSH MaxAuthTries is set to 4 or less (Automated)]" >> CISOut.txt
echo "[5.2.19 Ensure SSH MaxStartups is configured (Automated)]" >> CISOut.txt
echo "[5.2.20 Ensure SSH MaxSessions is set to 10 or less (Automated)]" >> CISOut.txt
echo "[5.2.21 Ensure SSH LoginGraceTime is set to one minute or less (Automated)]" >> CISOut.txt
echo "[5.2.22 Ensure SSH Idle Timeout Interval is configured (Automated)]" >> CISOut.txt
echo "[5.3 Configure privilege escalation5.3.1 Ensure sudo is installed (Automated)]" >> CISOut.txt
echo "[5.3.2 Ensure sudo commands use pty (Automated)]" >> CISOut.txt
echo "[5.3.3 Ensure sudo log file exists (Automated)]" >> CISOut.txt
echo "[5.3.4 Ensure users must provide password for privilege escalation (Automated)]" >> CISOut.txt
echo "[5.3.5 Ensure re-authentication for privilege escalation is not disabled globally (Automated)]" >> CISOut.txt
echo "[5.3.6 Ensure sudo authentication timeout is configured correctly (Automated)]" >> CISOut.txt
echo "[5.3.7 Ensure access to the su command is restricted (Automated)]" >> CISOut.txt
echo "[5.4 Configure PAM5.4.1 Ensure password creation requirements are configured (Automated)]" >> CISOut.txt
echo "[5.4.2 Ensure lockout for failed password attempts is configured (Automated)]" >> CISOut.txt
echo "[5.4.3 Ensure password reuse is limited (Automated)]" >> CISOut.txt
echo "[5.4.4 Ensure password hashing algorithm is up to date with the latest standards (Automated)]" >> CISOut.txt
echo "[5.4.5 Ensure all current passwords uses the configured hashing algorithm (Manual)]" >> CISOut.txt
echo "[5.5 User Accounts and Environment]" >> CISOut.txt
echo "[5.5.1 Set Shadow Password Suite Parameters]" >> CISOut.txt
echo "[5.5.1.1 Ensure minimum days between password changes is configured (Automated)]" >> CISOut.txt
echo "[5.5.1.2 Ensure password expiration is 365 days or less (Automated)]" >> CISOut.txt
echo "[5.5.1.3 Ensure password expiration warning days is 7 or more (Automated)]" >> CISOut.txt
echo "[5.5.1.4 Ensure inactive password lock is 30 days or less (Automated)]" >> CISOut.txt
echo "[5.5.1.5 Ensure all users last password change date is in the past (Automated)]" >> CISOut.txt
echo "[5.5.2 Ensure system accounts are secured (Automated)]" >> CISOut.txt
echo "[5.5.3 Ensure default group for the root account is GID 0 (Automated)]" >> CISOut.txt
echo "[5.5.4 Ensure default user umask is 027 or more restrictive (Automated)]" >> CISOut.txt
echo "[5.5.5 Ensure default user shell timeout is 900 seconds or less (Automated)]" >> CISOut.txt
echo "[6 System Maintenance6.1 System File Permissions]" >> CISOut.txt
echo "[6.1.1 Ensure permissions on /etc/passwd are configured (Automated)]" >> CISOut.txt
echo "[6.1.2 Ensure permissions on /etc/passwd- are configured (Automated)]" >> CISOut.txt
echo "[6.1.3 Ensure permissions on /etc/group are configured (Automated)]" >> CISOut.txt
echo "[6.1.4 Ensure permissions on /etc/group- are configured (Automated)]" >> CISOut.txt
echo "[6.1.5 Ensure permissions on /etc/shadow are configured (Automated)]" >> CISOut.txt
echo "[6.1.6 Ensure permissions on /etc/shadow- are configured (Automated)]" >> CISOut.txt
echo "[6.1.7 Ensure permissions on /etc/gshadow are configured (Automated)]" >> CISOut.txt
echo "[6.1.8 Ensure permissions on /etc/gshadow- are configured (Automated)]" >> CISOut.txt
echo "[6.1.9 Ensure no world writable files exist (Automated)]" >> CISOut.txt
echo "[6.1.10 Ensure no unowned files or directories exist (Automated)]" >> CISOut.txt
echo "[6.1.11 Ensure no ungrouped files or directories exist (Automated)]" >> CISOut.txt
echo "[6.1.12 Audit SUID executables (Manual)]" >> CISOut.txt
echo "[6.1.13 Audit SGID executables (Manual)]" >> CISOut.txt
echo "[6.2 Local User and Group Settings6.2.1 Ensure accounts in /etc/passwd use shadowed passwords (Automated)]" >> CISOut.txt
echo "[6.2.2 Ensure /etc/shadow password fields are not empty (Automated)]" >> CISOut.txt
echo "[6.2.3 Ensure all groups in /etc/passwd exist in /etc/group (Automated)]" >> CISOut.txt
echo "[6.2.4 Ensure shadow group is empty (Automated)]" >> CISOut.txt
echo "[6.2.5 Ensure no duplicate UIDs exist (Automated)]" >> CISOut.txt
echo "[6.2.6 Ensure no duplicate GIDs exist (Automated)]" >> CISOut.txt
echo "[6.2.7 Ensure no duplicate user names exist (Automated)]" >> CISOut.txt
echo "[6.2.8 Ensure no duplicate group names exist (Automated)]" >> CISOut.txt
echo "[6.2.9 Ensure root PATH Integrity (Automated)]" >> CISOut.txt
echo "[6.2.10 Ensure root is the only UID 0 account (Automated)]" >> CISOut.txt
echo "[6.2.11 Ensure local interactive user home directories exist (Automated)]" >> CISOut.txt
echo "[6.2.12 Ensure local interactive users own their home directories (Automated)]" >> CISOut.txt
echo "[6.2.13 Ensure local interactive user home directories are mode 750 or more restrictive (Automated)]" >> CISOut.txt
echo "[6.2.14 Ensure no local interactive user has .netrc files (Automated)]" >> CISOut.txt
echo "[6.2.15 Ensure no local interactive user has .forward files (Automated)]" >> CISOut.txt
echo "[6.2.16 Ensure no local interactive user has .rhosts files (Automated)]" >> CISOut.txt
echo "[6.2.17 Ensure local interactive user dot files are not group or world writable (Automated)]" >> CISOut.txt
