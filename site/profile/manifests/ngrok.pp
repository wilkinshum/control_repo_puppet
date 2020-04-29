class profile::nogrok{
  class { 'ngrok':
    authtoken       => '1bEBvqkvs002TFLMLtzTXROcuvm_4RjS9FEcoDhN7H9iHVKZL',
  }

  ngrok::tunnel { 'webhook':
    proto => 'tcp',
    addr  => '8088',
  }
}
