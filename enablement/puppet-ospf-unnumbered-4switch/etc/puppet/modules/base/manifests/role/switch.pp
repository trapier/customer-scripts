class base::role::switch {
include stdlib::stages
  class { 'base::license':
    stage => 'setup',
  }

  include base::interfaces,
    base::ntpclient
}
