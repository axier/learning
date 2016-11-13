class profiles::apps::elasticsearch::plugins::royrusso_elasticsearch_hq (

  $instance_name = 'base',

)
{

  ::elasticsearch::plugin { 'royrusso/elasticsearch-hq':
    instances => $instance_name,
  }

}