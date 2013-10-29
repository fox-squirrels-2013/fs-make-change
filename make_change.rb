# The final goal:
#
# 		make_change(110) #=> {:dollar => 1, :dime => 1}

# The implementation

def make_change(cents)
  coins = {}
	if cents >= 10
		coins[:dimes] = cents/10
		cents=cents%10
	end
	if cents >= 5
		coins[:nickels] = cents/5
		cents=cents%5
	end
	if cents > 0
		coins[:pennies] = cents
	end
  coins
end

# The test support/harness/framework

def assert(test)
	raise "Boom" unless test
end

# The tests

assert(make_change(0) == {})
assert(make_change(1) == {:pennies => 1})
assert(make_change(2) == {:pennies => 2})
assert(make_change(5) == {:nickels => 1})
assert(make_change(6) == {:nickels => 1, :pennies => 1})
assert(make_change(10) == {:dimes => 1})

puts "OK"
