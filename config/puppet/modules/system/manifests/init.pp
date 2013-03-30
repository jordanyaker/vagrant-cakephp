class system {
  class { 
    'system::update':;
    'system::groups':;
    'system::users':;
    'system::directories':;
  }
}