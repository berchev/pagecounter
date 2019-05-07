# Import couter class into our ruby program
require_relative "counter"

# Declare counter variable
c = Counter.new

# Choosing counter start value
#c.reset(0)

# Print current counter
puts c.content

# Increase counter
c.incr(1)
