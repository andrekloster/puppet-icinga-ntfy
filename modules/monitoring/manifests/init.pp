class monitoring ($ntfy_ip) {
    file {
        default:
            owner   => nagios,
            group   => nagios,
            mode    => '0644';
        '/etc/icinga2/constants.conf':
            ensure  => file,
            content => template("${module_name}/etc/icinga2/constants.conf.erb");
        '/etc/icinga2/conf.d/commands_ntfy.conf':
            ensure  => file,
            source  => "puppet:///modules/${module_name}/etc/icinga2/conf.d/commands_ntfy.conf";
        '/etc/icinga2/conf.d/hosts.conf':
            ensure  => file,
            source  => "puppet:///modules/${module_name}/etc/icinga2/conf.d/hosts.conf";
        '/etc/icinga2/conf.d/notifications_ntfy.conf':
            ensure  => file,
            source  => "puppet:///modules/${module_name}/etc/icinga2/conf.d/notifications_ntfy.conf";
        '/etc/icinga2/conf.d/services.conf':
            ensure  => file,
            source  => "puppet:///modules/${module_name}/etc/icinga2/conf.d/services.conf";
        '/etc/icinga2/conf.d/templates_ntfy.conf':
            ensure  => file,
            source  => "puppet:///modules/${module_name}/etc/icinga2/conf.d/templates_ntfy.conf";
        '/etc/icinga2/scripts/ntfy-host-notification.sh':
            ensure  => file,
            mode    => '0755',
            source  => "puppet:///modules/${module_name}/etc/icinga2/scripts/ntfy-host-notification.sh";
        '/etc/icinga2/scripts/ntfy-service-notification.sh':
            ensure  => file,
            mode    => '0755',
            source  => "puppet:///modules/${module_name}/etc/icinga2/scripts/ntfy-service-notification.sh";
    }
}
