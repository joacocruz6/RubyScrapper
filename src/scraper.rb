require 'nokogiri'
require 'httparty'
require 'byebug'

def scraper(url)
  unparsedPage = HTTParty.get(url) #we get all the page unparsed with these method
  parsed_page = Nokogiri::HTML(unparsedPage) # we get to parse the unparsed page, we got the html
  # we now got the html to a format that we can access the data from
  byebug #a debug thing to see the variables
end
