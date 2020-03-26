#напишем какой-нибудь логгер который будет что-то логировать, затем выводить на экран, а потом в файл
class Logger

  def initialize
    @f = File.open("log.txt", "a")    
  end

  @@x = nil

  def self.instance
    if @@x == nil
      @@x = Logger.new      
    end
    return @@x    
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
Logger.instance.log_something('Blabla')
Logger.instance.log_something('Blabla2')


logger = Logger.new
logger.log_something('hey!')