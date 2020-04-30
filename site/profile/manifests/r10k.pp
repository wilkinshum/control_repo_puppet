class profile::r10k {
  class {'r10k':
    remote => "https://github.com/wilkinshum/control_repo_puppet",
  }
  class {'r10k::webhook::config':
    use_mcollective => false,
    enable_ssl      => false,
  }
  class {'r10k::webhook':
    use_mcollective => false,
    user            => 'root',
    group           => '0',
    require         => Class['r10k::webhook::config'],
  }
}
