class Person
attr_reader :name, :happiness, :hygiene
attr_accessor :bank_account

def initialize(name)
  @name = name
  @bank_account = 25
  @happiness = 8
  @hygiene = 8
end

def happiness(num)
  @happiness = num
  @happiness = 0 if @happiness < 0
  @happiness = 10 if @happiness > 10
end

def hygiene(num)
 @hygiene = num
 @hygiene = 0 if @hygiene < 0
 @hygiene = 10 if @hygiene > 10
end

def clean?
  @hygiene > 7
end

def happy?
  @happiness > 7
end

def get_paid(salary)
  self.bank_account + salary
  self.happiness += 1
  puts “all about the benjamins”
end

def take_bath
  self.hygiene + 4
 puts “♪ Rub-a-dub just relaxing in the tub ♫”
end

def work_out
  self.happiness + 2
  self.hygiene - 3
  puts “♪ another one bites the dust ♫.”
end

def call_friend(friend)
  [friend, self].each {|x| x.happiness += 3}
   puts “Hi #{friend.name} It’s #{self.name}. How are you?”
end

end
