class profile::ngrok {
  class { 'ngrok':
    authtoken       => '1bEBvqkvs002TFLMLtzTXROcuvm_4RjS9FEcoDhN7H9iHVKZL',
  }

  ngrok::tunnel { 'webhook':
    proto => 'http',
    addr  => '8088',
  }
}
