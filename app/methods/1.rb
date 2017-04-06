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

TitlePrinter.print_title(TitlePrinter::METHODS, 1)

puts "def {object_name}.{method_name}
  {method body goes here}
end

def {object_name}.{method_name}(param_1, ..., param_n)
  {method body goes here}
end

def {object_name}.{method_name}(*params)
  {method body goes here}
end

def {method_name} # If no object name is specified the method belongs to {self} object
  {method body goes here}
end
\n"

