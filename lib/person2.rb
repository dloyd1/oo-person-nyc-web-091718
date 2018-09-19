class Person
  attr_reader :name
  attr_accessor :bank_account, :happiness, :hygiene

  def initialize(name)
    @name = name
    @bank_account = 25
    @happiness = 8
    @hygiene = 8
  end

  # def happiness(num)
  #   @happiness = num
  #   @happiness = 0 if @happiness

  def clean?
    @hygiene > 7
  end

  def happy?
    @happiness > 7
  end

  def get_paid(salary)
    @bank_account + salary
    puts "all about the benjamins"
  end

  def take_bath
    @hygiene + 4
    puts "♪ Rub-a-dub just relaxing in the tub ♫"
  end

  def work_out
    @happiness + 2
    @hygiene - 3
    puts "♪ another one bites the dust ♫."
  end

  def call_friend(friend)
    array1 = [self, friend]
    array1.each do |x| x.happiness + 3 end
    puts "Hi #{friend} It's #{self}. How are you?"
  end


  end
