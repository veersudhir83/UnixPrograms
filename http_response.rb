require 'net/http'
response = nil
urls = ['asxd622a-1.tsg.ge.com', 'asxd622a-2.tsg.ge.com']
urls.each { |url|
    Net::HTTP.start("#{url}", 7000) {|http|
        response = http.head('/energyplm/LastDeployed.jsp')
        puts "#{url}:#{response.code}"
    }
}
