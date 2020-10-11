require "stocks/version"
require 'open-uri'
require 'nokogiri'
require 'pry'
require 'net/http'

require_relative "./stocks/version"
require_relative './stocks/cli'
require_relative './stocks/stock'

module Stocks
  class Error < StandardError; end
  # Your code goes here...
end
