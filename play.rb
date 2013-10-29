# you know when you go to order a sandwich in America
# and you give them money and they give you change
# there's a robot that makes the change for you


def make_change(cents)

	if cents == 0
		return {}
	else
		return {:pennies => 1}
	end
end

def assert(test)
	raise "Boom" unless test
end



# make_change(110) #=> {:dollar => 1, :dime => 1}

assert(make_change(0) == {})

assert(make_change(1) == {:pennies => 1})

assert(make_change(2) == {:pennies => 2})














# design decisions:
#
# 1. naming the function
# ---------------------
# change_machine
# return_change
# make_change    					<-- let's go with this
# calculate_change
#
# 2. shape of the input
# ---------------------
# floating point
# integer 								<-- let's go with this
#
# 3. shape of the output
# ----------------------
# map (ruby calls this a 'hash')  <-- let's go with this
# array?
#
# 4. naming the input
# ----------------------
# change
# amount
# less_than_dollar
# cents  									<-- let's go with this
#
# 5. name the output
# ----------------------
# coins