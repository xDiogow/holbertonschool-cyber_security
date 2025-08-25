require 'net/http'

def get_request(url)
    uri = URI.parse(url)
    req = Net::HTTP::Get.new(uri.to_s)
    res = Net::HTTP.start(uri.host, uri.port) { |http|
        http.request(req)
    }
    puts "Response status: #{res.code} #{res.message}"
    puts "Response body: #{res.body}"
end