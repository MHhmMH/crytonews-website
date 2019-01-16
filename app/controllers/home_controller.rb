class HomeController < ApplicationController
  def index
    require 'net/http'
    require 'json'
    
    # grab the news info
    @url = 'https://min-api.cryptocompare.com/data/v2/news/?lang=EN'
    @uri  = URI(@url)
    @response = Net::HTTP.get(@uri)
    @news = JSON.parse(@response)
    
    #grab the price info
    
    @price_url = 'https://min-api.cryptocompare.com/data/pricemultifull?fsyms=BTC,XRP,ETH,,BCH,EOC,USDT,XLM,LTC,TRX,BSV&tsyms=USD'
    @price_uri  = URI(@price_url)
    @price_response = Net::HTTP.get(@price_uri)
    @prices = JSON.parse(@price_response) 
  end
  
  def prices
  end 
end
  