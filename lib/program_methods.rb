require 'nokogiri'
require 'httparty'
require_relative '../lib/constants.rb'

class Program
  def initialize; end

  def scraper
    url = BASE_URL
    unparsed = HTTParty.get(url)
    parsed = Nokogiri::HTML(unparsed.body)
    destinations_list = Array.new
    destinations_list.push(parsed.css('span.toptitle').text)  
  end

  


end
