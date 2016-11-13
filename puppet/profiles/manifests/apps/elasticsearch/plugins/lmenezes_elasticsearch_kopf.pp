class profiles::apps::elasticsearch::plugins::lmenezes_elasticsearch_kopf (

  $instance_name = 'base',

){

  ::elasticsearch::plugin { 'lmenezes/elasticsearch-kopf':
    instances => $instance_name,
  }

}