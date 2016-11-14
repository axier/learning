class profiles::apps::elasticsearch::plugins::cloud_azure (

  $ensure        = 'absent',
  $instance_name = 'base',

)
{

  ::elasticsearch::plugin { 'cloud-azure':
    ensure    => $ensure,
    instances => $instance_name,
  }

}