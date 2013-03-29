class system::update {
  exec { 'apt-get-update':
    creates => '/updated',
    command => "apt-get update && touch /updated"
  }
}