class postfix::satelite(
    $enabled            = params_lookup( 'enabled' ),
    $relayhost          = params_lookup( 'relayhost' ),
    $relayhost_username = params_lookup( 'relayhost_username' ),
    $relayhost_password = params_lookup( 'relayhost_password' ),
) inherits postfix {

    $ensure = $enabled ? {
        true => present,
        false => absent
    }

    include postfix::satelite::package, postfix::satelite::config, postfix::satelite::service
}
