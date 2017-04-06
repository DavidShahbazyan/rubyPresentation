##################################################################
# Methods in Ruby
# 1. Introduction to methods in Ruby
# 2. What Ruby methods return
# 3. Difference Between Puts and Returning Values
# 4. Difference between class and instance methods in Ruby
# 5. Procs and Lambdas
# 6. Difference between Procs and Lambdas
# 7. Closures
# 8. Method Arguments, Splat and Keyword Splat Arguments
##################################################################

require_relative '../util/title_printer'

TitlePrinter.print_chapter_content(TitlePrinter::METHODS)

##################################################################
# - Procs and Lambdas
# - Difference between Procs and Lambdas
TitlePrinter.print_title(TitlePrinter::METHODS, 5, 6)

###################################################################
# Blocks & "yield" keyword
# 0. Blocks can be "implicit" and "explicit"
# 1. Are being defined between "do/end" statements or "{}" symbols.
# 2. Are being included where the "yield" keyword das been called.
# 3. Can receive arguments through "yield" keyword.
# 4. You can check if the block has been passed to the method or not
#    using the "block_given?" method.

# "implicit" block definition
# Receives the block and calls it
def with_implicit_block
  yield # [param_1, ..., param_n] if you need them inside of the block
end

# "explicit" block definition
# You can name the block and pass it around if you need to
def with_explicit_block(&block)
  with_explicit_block_2(&block)
end

def with_explicit_block_2(&block)
  block.call
end


def do_n_times(n)
  puts "No block was given to \"do_n_times\" method!" unless block_given?

  # To force the call of "yield" only if a block was passed,
  # and prevent the "no block given(yield)" exception
  n.times { yield } if block_given?
  # n.times { yield }
end

do_n_times(3) # => Will print an error message in the console and cause the "no block given(yield)" exception
do_n_times(3) { print 'Blah!', ' ' }

# I know it's silly, but...
def iterate_the_array(array)
  array.each { |item| yield item }
end
puts
iterate_the_array([1, 2, 3, 4, 5]) { |n| print n, ' ' }
puts

###################################################################
# Procs
proc_1 = Proc.new { return 1 }

# The call below will rise "LocalJumpError" exception
# Reason: You can’t return from the top-level context
# proc_1.call

# If proc has a return statement, it'll return that method
# Will print "Before proc" but not "After proc"
def some_proc
  puts "Caled before proc"
  my_proc = Proc.new { return 1 }
  my_proc.call
  puts "Called after proc"
end

p "Result: #{some_proc}"

proc_2 = Proc.new { |arg| puts 'Proc_2 has been called successfully!' }
proc_2.call # => Will pass OK

###################################################################
# Lambdas

#####
# Definitions:
# {lambda_name} = -> { {lambda body} }
# {lambda_name} = ->([arg_1, ..., arg_n]) { {lambda body} }

# {lambda_name} = lambda { {lambda body} }
# {lambda_name} = lambda { |[arg_1, ..., arg_n]| {lambda body} }


lambda_1 = -> { puts 'Hello from "lambda_1" method!' }
lambda_2 = lambda { puts 'Hello from "lambda_2" method!' }

lambda_3 = ->(text) { puts "Hello from \"#{text}\" method!" }
lambda_4 = lambda { |text| puts "Hello from \"#{text}\" method!" }

lambda_5 = -> { return 1 }

#####
# Calls with no args
# lambda_2.call # => IS Recommended because of clarity
# lambda_2.()   # => Is Not recommended because of clarity
# lambda_2[]    # => Is Not recommended because of clarity
# lambda_2.===  # => Is Not recommended because of clarity

# lambda_2.call([arg_1, ..., arg_n])

lambda_1.call
lambda_2.call

lambda_3.call("lambda_3")
lambda_4.call("lambda_4")

lambda_5.call

# The call below will throw an "ArgumentError" exception
# lambda_3.call



###################################################################
# Procs vs Lambdas
# 1. Lambdas are defined with "-> {} / lambda {}" and procs with "Proc.new {}".
# 2. Procs return from the current method, while lambdas return from the lambda itself.
# 3. Procs don’t care about the correct number of arguments, while lambdas will raise an exception.
###################################################################

# MORE: http://www.blackbytes.info/2016/02/ruby-procs-and-lambdas/
