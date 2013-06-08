class postfix::satelite::config inherits postfix::config {

  file { '/etc/postfix/main.cf':
    ensure  => present,
    content => template('postfix/satelite/main.cf.erb'),
    require => Class['postfix::package'],
    notify  => Class['postfix::service']
  }

  postfix::hash { '/etc/postfix/sasl_passwd':
    ensure  => present,
    content => template('postfix/satelite/sasl_passwd.erb')
  }

}
