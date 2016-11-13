class profiles::confs::elk::standalone {
  $java_version          = hiera('elk::java_version')
  $logstash_version      = hiera('elk::logstash::version')
  $elasticsearch_version = hiera('elk::elasticsearch::version')
  $kibana_version        = hiera('elk::kibana::version')

  class { '::profiles::utils::java':
    version => $java_version,
  } ->
  class { '::profiles::apps::elasticsearch::base':
    version => $elasticsearch_version,
  } ->
  class { '::profiles::apps::kibana::base':
    version => $kibana_version,
  } ->
  class { '::profiles::apps::logstash::base':
    version => $logstash_version,
  }
  class { '::profiles::apps::elasticsearch::plugins::modz_elasticsearch_head':
    instance_name => $instance_name,
    require       => Class[ '::profiles::apps::elasticsearch::base' ]
  }
  class { '::profiles::apps::logstash::plugins::logstash_input_azureeventhub':
    key            => 'pyHpO/XzXVsm9TWWtu4JGot+i0EfxHRlJYr5CeWpHdg=',
    username       => 'logstash',
    namespace      => 'Poc-EventHub-ELK',
    eventhub       => 'poc-eventhub-elk',
    partitions     => 2,
    consumer_group => '$Default',
    require        => Class[ '::profiles::apps::logstash::base' ],
  }
  class { '::profiles::apps::logstash::plugins::logstash_output_elasticsearch':
    hosts   => '["localhost:9200"]',
    require => Class[ '::profiles::apps::logstash::base' ],
  }
}