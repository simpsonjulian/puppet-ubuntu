class common::ubuntu { 

  exec { 
    "apt get update":
      command => "/usr/bin/apt-get update";
    "apt get upgrade":
      command => "/usr/bin/aptitide upgrade";
  }


}
