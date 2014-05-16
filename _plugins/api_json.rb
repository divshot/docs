require('open-uri')
require('openssl')
require('json')
require('yaml')

#endpoint = open('https://api.divshot.com/documentation/divshot.io.json', { ssl_verify_mode: OpenSSL::SSL::VERIFY_NONE })
endpoint = open('http://localhost:3001/documentation/divshot.io.json', { ssl_verify_mode: OpenSSL::SSL::VERIFY_NONE })
$API_JSON = JSON.parse(endpoint.read)
File.open('_data/http.yml', 'w') do |file|
  file.write(YAML.dump($API_JSON))
end
