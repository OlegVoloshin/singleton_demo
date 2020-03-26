#напишем какой-нибудь логгер который будет что-то логировать, затем выводить на экран, а потом в файл
class Logger

  def initialize
    @f = File.open("log.txt", "a")    
  end

  @@x = Logger.new # переменная класса

  #создаем обьект внутри класса Logger
  def self.instance
    return @@x    
  end

 
  #instance method
  def log_something(what)
    @f.puts what
  end

  private_class_method :new # теперь метод .new мы можем вызывать только внутри класса
end



#logger = Logger.new  это уже не работаеи из-за privat (чтобы извне не могли создавть обьекты)
#logger.log_something('hey!')