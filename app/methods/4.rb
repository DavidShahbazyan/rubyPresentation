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
# - Difference between class and instance methods in Ruby
TitlePrinter.print_title(TitlePrinter::METHODS, 4)

class TestClass1
  def class_method_1
    "Class method 1 has been called."
  end
end

test_class_1_instance_1 = TestClass1.new
test_class_1_instance_2 = TestClass1.new

def test_class_1_instance_1.instance_method_1
  "Instance method 1 has been called."
end

puts "Test_class_1_instance_1#class_method_1: #{test_class_1_instance_1.class_method_1}"
puts "Test_class_1_instance_1#instance_method_1: #{test_class_1_instance_1.instance_method_1}"

puts "Test_class_1_instance_2#class_method_2: #{test_class_1_instance_2.class_method_1}"
puts "Test_class_1_instance_2#instance_method_2: #{test_class_1_instance_2.instance_method_1}"


