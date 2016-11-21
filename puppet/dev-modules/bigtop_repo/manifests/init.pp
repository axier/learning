class bigtop_repo (

  $version  = $bigtop_repo::params::version,
  $enabled  = $bigtop_repo::params::enabled,
  $gpgcheck = $bigtop_repo::params::gpgcheck,
  $gpgkey   = $bigtop_repo::params::gpgkey,

) inherits bigtop_repo::params {

  yumrepo { 'bigtop':
    descr    => 'bigtop',
    enabled  => $enabled,
    gpgcheck => $gpgcheck,
    baseurl  => "http://bigtop-repos.s3.amazonaws.com/releases/${version}/centos/${::operatingsystemmajrelease}/${::architecture}/",
    gpgkey   => $gpgkey,
  }

}