class cloudera_repo (

  $version  = $cloudera_repo::params::version,
  $enabled  = $cloudera_repo::params::enabled,
  $gpgcheck = $cloudera_repo::params::gpgcheck,
  $gpgkey   = $cloudera_repo::params::gpgkey,

) inherits cloudera_repo::params {

  yumrepo { 'cloudera-cdh5':
    descr    => 'Cloudera\'s Distribution for Hadoop, Version 5',
    enabled  => $enabled,
    gpgcheck => $gpgcheck,
    baseurl  => "https://archive.cloudera.com/cdh5/redhat/${::operatingsystemmajrelease}/${::architecture}/cdh/${version}/",
    gpgkey   => $gpgkey,
  }

}