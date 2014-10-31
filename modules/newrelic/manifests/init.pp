class newrelic (
    $newrelic_app_name    = 'Avocet Dev0',
    $newrelic_license_key = '1e137be444b0138c591b9ecd96680c12f7311a85',
  ) {

  # Add newrelic.js to the app root directory
  file { '/opt/oae/newrelic.js':
    ensure  => present
    content => template('newrelic/newrelic.js.erb'),
  }
}
