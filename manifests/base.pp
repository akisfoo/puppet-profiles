class profiles::base {
  $motd_content = hiera(motd::content)
  $ntp_servers  = hiera(ntp::servers)

  class { "::motd":
    content => $motd_content,
  }

  class { "::ntp":
    servers => $ntp_servers,
  }

  #include ::ssh::server
  #include ::ssh::client
}
