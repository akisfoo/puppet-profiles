class profiles::graphite {
  class { "::graphite":
    gr_apache_24 => true,
    secret_key   => 'foo'
  }
}
