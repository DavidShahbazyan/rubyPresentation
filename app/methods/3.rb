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
# - Difference Between Puts and Returning Values
TitlePrinter.print_title(TitlePrinter::METHODS, 3)

def concat_strings_and_return(str1='ee', str2='ff')
  str1 + str2
end

def concat_strings_and_puts(str1, str2)
  puts str1 + str2
end

# Should print abc
concat_string_return_result = concat_strings_and_return(concat_strings_and_return, "c")
concat_string_return_result_1 = concat_strings_and_return(concat_strings_and_return("a", "b"), "c")
puts "Concat_strings_and_return method result: #{concat_string_return_result}."

# Should fail because of calling "+" on NilObject
concat_string_puts_result = concat_strings_and_puts(concat_strings_and_puts("a", "b"), "c")
puts "Concat_strings_and_puts method result: #{concat_string_puts_result}."

