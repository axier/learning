node /^yum-(\d+).nexus.local$/ {
  include ::roles::nexus::yum
}