# The final goal:
#
#     make_change(110) #=> {:dollar => 1, :dime => 1}

# The implementation

US_COINSET = [
  [:quarters, 25],
  [:dimes,    10],
  [:nickels,   5],
  [:pennies,   1]
]

def make_change(cents)
  US_COINSET.reduce Hash.new do |coins, (coin_name, coin_value)|
    coin_count, cents = cents.divmod(coin_value)
    coin_count.zero? ? coins : coins.merge(coin_name => coin_count)
  end
end

# The test support/harness/framework

def assert(test)
  raise "Boom" unless test
end

# The tests

# boundary cases
assert(make_change(0) == {})
assert(make_change(1) == {:pennies => 1})
assert(make_change(5) == {:nickels => 1})

assert(make_change(10) == {:dimes => 1})
assert(make_change(25) == {:quarters => 1})

# examples
assert(make_change(2) == {:pennies => 2})
assert(make_change(6) == {:nickels => 1, :pennies => 1})
assert(make_change(17) == {:dimes => 1, :nickels => 1, :pennies => 2})
assert(make_change(34) == {:quarters=>1, :nickels=>1, :pennies=>4})
assert(make_change(83) == {:quarters=>3, :nickels=>1, :pennies=>3})

puts "OK"
