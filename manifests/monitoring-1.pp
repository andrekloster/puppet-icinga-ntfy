node 'monitoring-1.mydomain.local' { # NODE ANPASSEN
    class {
        '::monitoring':
            ntfy_ip => '10.192.1.15' # IP ANPASSEN
        ;
    }
}
