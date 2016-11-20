node /^master-(\d+).mesos.local$/ {
  include ::roles::mesos::master
}

node /^slave-(\d+).mesos.local$/ {
  include ::roles::mesos::slave
}