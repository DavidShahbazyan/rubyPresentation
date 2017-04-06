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
# - Closures
TitlePrinter.print_title(TitlePrinter::METHODS, 7)

def call_proc(my_proc)
  count = 500
  my_proc.call
end

count   = 1
my_proc = Proc.new { puts count }
my_lambda = -> { puts count }

p call_proc(my_proc) # => Will print "1". The reason is the same as for Functions in Java.
p call_proc(my_lambda) # => Will print "1". The reason is the same as for Functions in Java.

###################################################################
#####                      GOOD TO KNOW                       #####
###################################################################
# Where do procs & lambdas store this scope information?
# Little about the Binding class.
# When you create a Binding object via the binding method, you are creating an ‘anchor’ to this point in the code.
# Every variable, method and class defined at this point will be available later via this object,
# even if you are in a completely different scope.
# In other words, executing something under the context of a binding object,
# is the same as if that code was in the same place where that binding was defined (remember the ‘anchor’ methaphor).
###################################################################

=begin

def return_binding
  foo = 100
  binding
end

# Foo is available thanks to the binding,
# even though we are outside of the method
# where it was defined.
puts return_binding.class
puts return_binding.eval('foo')

# If you try to print foo directly you will get an error.
# The reason is that foo was never defined outside of the method.
puts foo

=end

# DETAILS: http://www.blackbytes.info/2016/02/ruby-procs-and-lambdas/


def return_binding
  foo = 100   # => returns 100
  foo2 = 200    # => returns 200
  binding   # => returns Binding reference
end

# Foo is available thanks to the binding,
# even though we are outside of the method
# where it was defined.
puts return_binding.class
puts return_binding.eval('foo')