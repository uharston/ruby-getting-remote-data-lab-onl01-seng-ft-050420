require 'open-uri'
require 'net/http'
require 'json'


class GetRequester

  attr_accessor :url

  def initialize(url)
    @url = url
  end

  def get_response_body
    uri = URI.parse(@url)
    response = Net::HTTP.get_response(uri)
    response.body
  end

  def parse_json
    JSON.parse(get_response_body)
  end
end

# laura = GetRequester.new("https://stephanieharston.github.io/")
# laura.get_response_body
# laura.parse_json
# https://data.cityofnewyork.us/resource/uvks-tn5n.json
#
# https://stephanieharston.github.io/
