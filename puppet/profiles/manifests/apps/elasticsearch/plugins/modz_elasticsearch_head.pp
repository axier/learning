class profiles::apps::elasticsearch::plugins::modz_elasticsearch_head (

  $instance_name = 'base',

)
{

  ::elasticsearch::plugin { 'mobz/elasticsearch-head':
    instances => $instance_name,
  }

}