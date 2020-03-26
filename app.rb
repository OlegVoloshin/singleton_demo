#напишем какой-нибудь логгер который будет что-то логировать, затем выводить на экран, а потом в файл
class Logger

  def initialize
    @f = File.open("log.txt", "a")
    
  end
  #class method
  def self.say_something
    puts 'Hahaha'
  end

  #instance method
  def log_something(what)
    @f.puts what
  end
end

Logger.say_something
logger = Logger.new
logger.log_something('hey!')