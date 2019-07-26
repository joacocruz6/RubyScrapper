# Tutorial of this scraper
So this is an scrapper build on ruby. First let's create the gem file to get the gems that we want. This are nokogiri,httparty and byebug.
Byebug is a debugger, httpparty is a gem that allow us to download the content of the url and nokogiri let us read that content to our page.

## Making the first scrapper
So to scrap a page on the web let's create the simple scrapper function that takes an url and scrap it:
```rb
require 'nokogiri'
require 'httparty'
require 'byebug'

def scraper(url)
  unparsedPage = HTTParty.get(url) #we get all the page unparsed with these method
  parsed_page = Nokogiri::HTML(unparsedPage) # we get to parse the unparsed page, we got the html
  # we now got the html to a format that we can access the data from
  byebug #a debug thing to see the variables
end
```
Now let's call it, to do that 
