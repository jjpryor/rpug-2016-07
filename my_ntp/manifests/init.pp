# Class: my_ntp
# ===========================
#
# This class uses puppetlabs-ntp to enable ntpd and uses hiera to get all the
# particular conifg bits like servers, restrict or peers and configures the 
# node to be a client or a server based on that hiera data. It will also change
# the firewall to allow serving NTP if hiera boolean 'is_ntp_server' is true.
#
# === Variables
#
# Here you should define a list of variables that this module would require.
#
# [*is_ntp_server*]
#   Boolean. If true open udp port 123.
# Authors
# -------
#
# Author Name <author@domain.com>
#
# Copyright
# ---------
#
# Copyright 2016 Your name here, unless otherwise noted.
#
class my_ntp {
  if ( hiera('is_ntp_server') ) {
    firewall { '120 Allow inbound NTP on UDP port 123':
      dport  => 123,
      proto  => udp,
      action => accept,
    }
  }
  class { '::ntp':
  }
  service { 'chronyd':
      ensure => false,
      enable => false,
  }
}
