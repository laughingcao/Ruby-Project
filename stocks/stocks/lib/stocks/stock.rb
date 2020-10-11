class Stocks::Stock
  attr_accessor :name, :info

  def self.today
    self.scrape_stocks
  end

  def self.scrape_stocks
    stocks = []

    stocks << self.scrape_stock_1
    stocks << self.scrape_stock_2
    stocks << self.scrape_stock_3
    stocks << self.scrape_stock_4
    stocks << self.scrape_stock_5

    stocks
  end

  def self.scrape_stock_1
    doc = Nokogiri::HTML(URI.open("https://robinhood.com/collections/100-most-popular"))

    stock = self.new
    stock.name = doc.search("span._2fMBL180hIqVoxOuNVJgST").first.text
    stock.info = doc.search("tr._2ee2nmx5AR9phitIxZGPZl").slice(0).text

    stock
  end

  def self.scrape_stock_2
    doc = Nokogiri::HTML(URI.open("https://robinhood.com/collections/100-most-popular"))

    stock = self.new
    stock.name = doc.search("span._2fMBL180hIqVoxOuNVJgST").slice(1).text
    stock.info = doc.search("tr._2ee2nmx5AR9phitIxZGPZl").slice(1).text

    stock
  end

  def self.scrape_stock_3
    doc = Nokogiri::HTML(URI.open("https://robinhood.com/collections/100-most-popular"))

    stock = self.new
    stock.name = doc.search("span._2fMBL180hIqVoxOuNVJgST").slice(2).text
    stock.info = doc.search("tr._2ee2nmx5AR9phitIxZGPZl").slice(2).text

    stock
  end

  def self.scrape_stock_4
    doc = Nokogiri::HTML(URI.open("https://robinhood.com/collections/100-most-popular"))

    stock = self.new
    stock.name = doc.search("span._2fMBL180hIqVoxOuNVJgST").slice(3).text
    stock.info = doc.search("tr._2ee2nmx5AR9phitIxZGPZl").slice(3).text

    stock
  end

  def self.scrape_stock_5
    doc = Nokogiri::HTML(URI.open("https://robinhood.com/collections/100-most-popular"))

    stock = self.new
    stock.name = doc.search("span._2fMBL180hIqVoxOuNVJgST").slice(4).text
    stock.info = doc.search("tr._2ee2nmx5AR9phitIxZGPZl").slice(4).text

    stock
end
end
