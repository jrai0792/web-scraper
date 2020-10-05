require 'nokogiri'
require 'open-uri'
require_relative '../lib/constants.rb'

class Program

  def initialize; end

  def verify_ui(user_input)
    if user_input <28 && user_input >= 1
      return true
    else
      return false
    end
  end

  def scraper(valid_input)
    url = BASE_URL
    unparsed = URI.open(url)
    parsed = Nokogiri::HTML(URI.open(url))
    html = unparsed.read
    destinations_list = parsed.css('span.toptitle').to_a
    return destinations_list[valid_input-1].text
  end

  def destination_details(destination)
    url = BASE_URL
    unparsed = URI.open(url)
    parsed = Nokogiri::HTML(URI.open(url))
    html = unparsed.read
    return parsed.search('p')[destination + 3].text
  end

end
