require 'net/http'
require 'json'

def post_request(url, body_params)
  uri = URI.parse(url)

  req = Net::HTTP::Post.new(uri)
  req['Content-Type'] = 'application/json'
  req.body = JSON.dump(body_params)

  Net::HTTP.start(uri.host, uri.port, use_ssl: uri.scheme == 'https') do |http|
    res = http.request(req)
    puts "Response status: #{res.code} #{res.message}"
    puts "Response body: #{res.body}"
  end
end
