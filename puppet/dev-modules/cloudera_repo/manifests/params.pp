class cloudera_repo::params {

  $version  = '5'
  $enabled  = true
  $gpgcheck = true
  $gpgkey   = "https://archive.cloudera.com/cdh5/redhat/${::operatingsystemmajrelease}/${::architecture}/cdh/RPM-GPG-KEY-cloudera"
}