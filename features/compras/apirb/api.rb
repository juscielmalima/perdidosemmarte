require 'rest-client'
require 'json'

log = Logger.new(STDOUT)
RestClient.log = log
log.level = Logger::DEBUG

url = 'https://jsonplaceholder.typicode.com/photos?title=reprehenderit est deserunt velit ipsam'

# RestClient.get 'https://jsonplaceholder.typicode.com/photos?title=reprehenderit est deserunt velit ipsam'


# RestClient.get 'https://jsonplaceholder.typicode.com/?name=Clementine Bauch'
# RestClient.get 'https://jsonplaceholder.typicode.com/', {params: {name:'Clementine Bauch'}}

#para trazer em formato bonito  no CMDER:
response = RestClient.get(url)
JSON.parse(response)
puts response 