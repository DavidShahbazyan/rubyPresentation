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
# - What Ruby methods return
TitlePrinter.print_title(TitlePrinter::METHODS, 2)

def test_method_with_return
  return "Response from test_method_with_return!"
end
puts "Test_method_with_return: #{test_method_with_return}"

def test_method_without_return
  "Response from test_method_without_return!"
end
puts "Test_method_without_return: #{test_method_without_return}"

def test_method_with_empty_body
  # will return nil or ""
end
puts "Test_method_with_empty_body: #{test_method_with_empty_body}!"

def are_equal?(a, b)
  a == b
end
puts are_equal?(5, 5)

