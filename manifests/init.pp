class common::ubuntu { 

  exec { 
    "apt get update":
      command => "/usr/bin/apt-get update";
  }

}
define preseed_package ( $ensure, $module) {

  file { "/var/local/preseed/$name.preseed":
    source => "puppet:///${module}/var/local/preseed/$name.preseed",
    mode => 600,
    backup => false,
  }

  package { "$name":
    ensure => $ensure,
    responsefile => "/var/local/preseed/$name.preseed",
    require => File["/var/local/preseed/$name.preseed"],
  }

}
