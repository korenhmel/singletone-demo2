class Logger
  def initialize
    @f = File.open 'log.txt', 'a'
  end
  # class method
  def self.say_smth
    puts 'say hello Logger!!!'
  end
  # instance method
  def log_smth wat
    @f.puts wat
  end
end

Logger.say_smth

logger = Logger.new
logger.log_smth 'hey!'