class profile::r10k {
  class {
    remote => 'https://github.com/electric12-dev/control-repo',
  }
  class {'r10k::webhook::config':
    use_mcollective => false,
    enable_ssl = false,
  }
  class {'r10k::webhook':
    user => 'root',
    group => 'root',
    }
}
