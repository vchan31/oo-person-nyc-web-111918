class Person
attr_accessor :bank_account
attr_reader :name, :happiness, :hygiene

def initialize(name)

@name = name
@bank_account = 25
@happiness = 8
@hygiene = 8

end

def happiness=(value)
@happiness = value
if @happiness > 10
return @happiness = 10
end

if @happiness < 0
return @happiness = 0
end

end #end of happiness function

def hygiene=(value)
@hygiene = value

if @hygiene > 10
return @hygiene =  10
end

if @hygiene < 0
return @hygiene = 0
end

end #end of hygiene function

def happy?
if @happiness >7
	true
else
	false
end
end

def clean?
if @hygiene > 7
	true
else
	false
end
end

def get_paid(salary)
@bank_account += salary
return "all about the benjamins"	
end

def take_bath
self.hygiene += 4
return "♪ Rub-a-dub just relaxing in the tub ♫"
end

def work_out
self.happiness += 2
self.hygiene -= 3
return "♪ another one bites the dust ♫"
end

def call_friend(friend)
self.happiness += 3
friend.happiness +=3
return "Hi #{friend.name}! It's #{self.name}. How are you?"
end

def start_conversation(friend, topic)
if topic == "politics"
	self.happiness -=2
	friend.happiness -=2
	return "blah blah partisan blah lobbyist"

elsif topic == "weather"
	self.happiness +=1
	friend.happiness +=1
	return "blah blah sun blah rain"
else
	return "blah blah blah blah blah"

end
end

end