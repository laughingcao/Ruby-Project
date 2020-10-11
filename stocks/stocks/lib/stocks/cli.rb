#Our CLI Controller
class Stocks::CLI

  def call
    puts "Today's current 5 highest analyst rated Stocks on Robinhood:"
    list_stocks
    menu
    goodbye
  end

  def list_stocks
    @stocks = Stocks::Stock.today
    @stocks.each.with_index(1) do |stock, i|
      puts "#{i}. #{stock.name}"
  end
end

  def menu
    input = nil
    while input != "exit"
    puts "Enter the number of the stock get more info about it or type 'list' to see list of stocks again or 'exit'"
    input = gets.strip.downcase

    if input.to_i > 0
      the_stock = @stocks[input.to_i-1]
          puts " #{the_stock.info}"
    elsif input == "list"
      list_stocks
    else
        puts "Error... please use 1,2,3,4,5 list or exit commands"
      end
    end
  end

  def goodbye
    puts "Check tomorrow for the new updates!"
  end
end
