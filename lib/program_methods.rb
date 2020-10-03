require 'nokogiri'
require 'httparty'
require_relative '../lib/constants.rb'

class Program
  def states
    STATE_NAME.each_with_index do |state,index|
      puts "#{index += 1}: #{state}"
    end
  end

  def union_territories
    UNION_TERRITORIES.each_with_index do |territory,index|
      puts "#{index += 1}: #{territory}"
    end
  end

  def scraper
    url = BASE_URL
    unparsed = HTTParty.get(url)
    parsed = nokogiri::HTML(unparsed.body)
  end
end
