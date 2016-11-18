class Logger
  def initialize
    @f = File.open 'log.txt', 'a'
  end

  @@x = nil

  def self.instance
    if @@x == nil
      @@x = Logger.new
    end
    @@x
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
Logger.instance.log_smth 'bla bla 1'
Logger.instance.log_smth 'bla bla 2'

logger = Logger.new
logger.log_smth 'hey'

