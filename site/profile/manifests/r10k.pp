calss profile::r10k {
        class {'r10k':
            remote => 'https://github.com/wilkinshum/control_repo_puppet',
        }
        class {'r10K::webhook::config':
            use_mcollective => false,
            enable_ssl      => false,
        }
        class {'r10k::webhook':
            user    => 'root'
            group   => 'root',
        }
}